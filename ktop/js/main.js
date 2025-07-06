import * as THREE from 'three';
import { OrbitControls } from 'three/addons/controls/OrbitControls.js';
import { History, AddObjectCommand, TransformCommand, TextureCommand } from './History.js';

// --- 스냅 관련 설정 ---
const snapDistance = 0.5; // 스냅이 활성화되는 최대 거리
let snapGuide = null; // 스냅 위치를 시각적으로 보여주는 도우미
let allVertices = []; // 스냅 대상이 되는 모든 꼭짓점

// 1. 기본 설정
const canvas = document.querySelector('#c');
const renderer = new THREE.WebGLRenderer({ antialias: true, canvas });

const scene = new THREE.Scene();
scene.background = new THREE.Color(0xeeeeee);

const camera = new THREE.PerspectiveCamera(75, window.innerWidth / window.innerHeight, 0.1, 1000);
camera.position.set(5, 10, 5);
camera.lookAt(0, 0, 0);


const controls = new OrbitControls(camera, renderer.domElement);
controls.enableDamping = false; // 댐핑 비활성화
controls.mouseButtons = {
	LEFT: null, // 좌클릭은 그리기를 위해 비활성화
	MIDDLE: THREE.MOUSE.PAN, // 휠클릭으로 카메라 이동
	RIGHT: THREE.MOUSE.ROTATE // 우클릭으로 카메라 회전
};
controls.enableZoom = false; // OrbitControls의 기본 줌 비활성화
controls.enablePan = true;
controls.enableRotate = true;
controls.minDistance = 1;
controls.maxDistance = 30;
controls.target.set(0, 0, 0);
controls.update();

// 2. 조명
const ambientLight = new THREE.AmbientLight(0xffffff, 0.5);
scene.add(ambientLight);

const directionalLight = new THREE.DirectionalLight(0xffffff, 1);
directionalLight.position.set(5, 10, 7.5);
scene.add(directionalLight);

// 3. 그리기 환경 설정
const gridHelper = new THREE.GridHelper(100, 100);
scene.add(gridHelper);
setupSnapGuide(); // 스냅 도우미 초기화

// --- History 관리 ---
const history = new History();

const drawableObjects = [];
const groundPlane = new THREE.Plane(new THREE.Vector3(0, 1, 0), 0);
let activeDrawingPlane = groundPlane;

let isDrawing = false;
let startPoint = new THREE.Vector3();
let previewMesh = null;

let isExtruding = false;
let extrudeTarget = null;
let highlightMesh;
let lastMouseY = 0;
let axisGuideLines = []; // X/Z축 가이드 라인들 (높이 가이드는 제거됨)

// 텍스처링 상태 관련 변수
let isTexturingMode = false;
const textureHighlightMaterial = new THREE.MeshStandardMaterial({ color: 0xffff00, opacity: 0.5, transparent: true, side: THREE.DoubleSide });
let highlightedFaceInfo = {
    object: null,
    faceIndex: -1,
    originalMaterial: null
};

// 4. 텍스처 선택 로직
const texturePalette = document.getElementById('texture-palette');
let selectedTextureSrc = null;

// 초기 상태에서 모든 텍스처 선택 해제
document.addEventListener('DOMContentLoaded', () => {
    const allTextureOptions = texturePalette.querySelectorAll('.texture-option');
    allTextureOptions.forEach(option => option.classList.remove('active'));
    selectedTextureSrc = null;
    isTexturingMode = false;
});

texturePalette.addEventListener('click', (event) => {
    if (event.target.classList.contains('texture-option')) {
        const currentlyActive = texturePalette.querySelector('.active');
        
        if (currentlyActive && currentlyActive === event.target) {
            // 이미 선택된 텍스처를 다시 클릭 -> 선택 취소
            currentlyActive.classList.remove('active');
            selectedTextureSrc = null;
            isTexturingMode = false;
            clearTextureHighlight(); // 하이라이트 제거
        } else {
            // 다른 텍스처를 선택
            if (currentlyActive) {
                currentlyActive.classList.remove('active');
            }
            event.target.classList.add('active');
            selectedTextureSrc = event.target.dataset.texture;
            isTexturingMode = true;
        }
    }
});

// 5. Raycaster 및 이벤트 리스너 설정
const raycaster = new THREE.Raycaster();
const mouse = new THREE.Vector2();
const mouseDownPos = new THREE.Vector2();

renderer.domElement.addEventListener('pointerdown', onPointerDown, false);
renderer.domElement.addEventListener('pointermove', onPointerMove, false);
renderer.domElement.addEventListener('pointerup', onPointerUp, false);
renderer.domElement.addEventListener('click', onCanvasClick, false);
renderer.domElement.addEventListener('contextmenu', onRightClick, false);

// 커스텀 휠 줌 처리
renderer.domElement.addEventListener('wheel', (event) => {
    if (isDrawing || isExtruding) {
        event.preventDefault();
        return;
    }
    
    event.preventDefault();
    
    // 적당한 줌 단위로 제어
    const zoomAmount = event.deltaY > 0 ? 1.05 : 0.95; // 5%씩 줌
    const direction = camera.position.clone().sub(controls.target).normalize();
    const distance = camera.position.distanceTo(controls.target);
    
    const newDistance = Math.max(controls.minDistance, Math.min(controls.maxDistance, distance * zoomAmount));
    camera.position.copy(controls.target).add(direction.multiplyScalar(newDistance));
    
    controls.update();
}, { passive: false });

// --- Undo/Redo 리스너 ---
window.addEventListener('keydown', (event) => {
    // 입력 필드에 있을 때는 작동하지 않도록
    if (event.target.tagName.toUpperCase() === 'INPUT' || event.target.tagName.toUpperCase() === 'TEXTAREA') {
        return;
    }

    if (event.ctrlKey || event.metaKey) {
        if (event.key.toLowerCase() === 'z') {
            event.preventDefault();
            history.undo();
        } else if (event.key.toLowerCase() === 'y') {
            event.preventDefault();
            history.redo();
        }
    }
});

function onCanvasClick(event) {
    const dragDistance = mouseDownPos.distanceTo(new THREE.Vector2(event.clientX, event.clientY));
    if (dragDistance > 5 || !isTexturingMode || !selectedTextureSrc) return;

    // 하이라이트 복원 후 텍스처 적용
    const highlightedInfoBeforeClick = { ...highlightedFaceInfo };
    clearTextureHighlight();

    const intersects = raycaster.intersectObjects(drawableObjects);

    if (intersects.length > 0) {
        const intersection = intersects[0];
        const intersectedObject = intersection.object;
        const materialIndex = intersection.face.materialIndex;
        const oldMaterial = intersectedObject.material[materialIndex];

        const textureLoader = new THREE.TextureLoader();
        textureLoader.load(selectedTextureSrc, (texture) => {
            texture.wrapS = THREE.RepeatWrapping;
            texture.wrapT = THREE.RepeatWrapping;
            texture.repeat.set(1, 1);
            
            const newMaterial = new THREE.MeshStandardMaterial({
                map: texture,
                side: THREE.DoubleSide
            });
            
            // TextureCommand 사용
            const command = new TextureCommand(intersectedObject, materialIndex, oldMaterial, newMaterial);
            history.execute(command);
        });
    }
}

// 컨텍스트 메뉴 관련 변수
let contextMenu = null;
let contextMenuTarget = null;

function onRightClick(event) {
    event.preventDefault(); // 기본 컨텍스트 메뉴 방지
    
    // 기존 컨텍스트 메뉴 숨김
    hideContextMenu();
    
    // 마우스 위치 업데이트
    updateMouseAndRaycaster(event);
    const intersects = raycaster.intersectObjects(drawableObjects);
    
    if (intersects.length > 0) {
        const targetObject = intersects[0].object;
        
        // 돌출 중인 객체는 컨텍스트 메뉴 표시 안함
        if (isExtruding && extrudeTarget === targetObject) {
            return;
        }
        
        // 컨텍스트 메뉴 표시
        showContextMenu(event.clientX, event.clientY, targetObject);
    }
}

function showContextMenu(x, y, targetObject) {
    if (!contextMenu) {
        contextMenu = document.getElementById('context-menu');
        
        // 삭제 버튼 클릭 이벤트
        const deleteButton = document.getElementById('delete-object');
        deleteButton.addEventListener('click', () => {
            if (contextMenuTarget) {
                deleteObject(contextMenuTarget);
                hideContextMenu();
            }
        });
        
        // 외부 클릭 시 메뉴 숨김
        document.addEventListener('click', (event) => {
            if (!contextMenu.contains(event.target)) {
                hideContextMenu();
            }
        });
    }
    
    contextMenuTarget = targetObject;
    contextMenu.style.left = x + 'px';
    contextMenu.style.top = y + 'px';
    contextMenu.style.display = 'block';
}

function hideContextMenu() {
    if (contextMenu) {
        contextMenu.style.display = 'none';
        contextMenuTarget = null;
    }
}

function deleteObject(objectToDelete) {
    // 객체를 배열에서 제거
    const index = drawableObjects.indexOf(objectToDelete);
    if (index > -1) {
        drawableObjects.splice(index, 1);
    }
    
    // 씬에서 제거
    scene.remove(objectToDelete);
    
    // 메모리 정리
    objectToDelete.geometry.dispose();
    if (Array.isArray(objectToDelete.material)) {
        objectToDelete.material.forEach(material => material.dispose());
    } else {
        objectToDelete.material.dispose();
    }
    
    // 하이라이트 메시가 삭제된 객체를 참조하고 있다면 숨김
    if (highlightMesh) {
        highlightMesh.visible = false;
    }
    
    // 텍스처 하이라이트도 정리
    clearTextureHighlight();
    
    // 꼭짓점 목록 업데이트
    updateAllVertices();
}

let oldTransformData = null; // 돌출 시작 시점의 상태 저장용

function onPointerDown(event) {
    if (event.button !== 0) return;
    
    clearTextureHighlight();
    mouseDownPos.set(event.clientX, event.clientY);
    updateMouseAndRaycaster(event);
    const intersects = raycaster.intersectObjects(drawableObjects);

    // 1. 먼저 돌출 가능한지 확인 (하이라이트된 면이 있고, 실제 면을 클릭했는지)
    if (highlightMesh && highlightMesh.visible && intersects.length > 0 && intersects[0].face.normal.y > 0.99) {
        isExtruding = true;
        controls.enabled = false;
        extrudeTarget = intersects[0].object;
        lastMouseY = event.clientY;
        
        // 돌출 시작 전 상태 저장
        oldTransformData = {
            geometry: extrudeTarget.geometry.clone(),
            position: extrudeTarget.position.clone(),
            scale: extrudeTarget.scale.clone()
        };

        highlightMesh.visible = false;
        return;
    }

    // 2. 돌출이 아니라면 꼭짓점 클릭 확인
    updateAllVertices(); // 이제 여기서 꼭짓점 업데이트
    const clickedVertex = getClickedVertex(event);
    if (clickedVertex) {
        isDrawing = true;
        controls.enabled = false;
        
        // 클릭된 꼭짓점의 높이에 맞춰 그리기 평면 설정
        activeDrawingPlane = new THREE.Plane(new THREE.Vector3(0, 1, 0), -clickedVertex.y);
        startPoint.copy(clickedVertex);
        
        // 스냅 가이드를 즉시 표시
        snapGuide.visible = true;
        snapGuide.position.copy(clickedVertex);
        
        // 프리뷰 메시 생성 (꼭짓점에서 시작할 때도 회색으로 표시)
        const initialHeight = 0.02;
        const previewGeometry = new THREE.BoxGeometry(0.1, initialHeight, 0.1);
        const previewMaterial = new THREE.MeshBasicMaterial({ color: 0x888888, transparent: true, opacity: 0.5 });
        previewMesh = new THREE.Mesh(previewGeometry, previewMaterial);
        
        const planeY = -activeDrawingPlane.constant;
        previewMesh.position.copy(startPoint);
        previewMesh.position.y = planeY + initialHeight / 2;
        scene.add(previewMesh);
        return; // 꼭짓점 클릭으로 그리기를 시작했으므로 여기서 종료
    }

    // 3. 일반적인 그리기 (빈 공간이나 면 위에서)
    activeDrawingPlane = groundPlane;
    if (intersects.length > 0 && intersects[0].face.normal.y > 0.99) {
        activeDrawingPlane = new THREE.Plane(new THREE.Vector3(0, 1, 0), -intersects[0].point.y);
    }

    const intersectionPoint = new THREE.Vector3();
    if (raycaster.ray.intersectPlane(activeDrawingPlane, intersectionPoint)) {
        isDrawing = true;
        controls.enabled = false;
        const snappedPoint = getSnapPoint(intersectionPoint, activeDrawingPlane);
        startPoint.copy(snappedPoint);
        
        const initialHeight = 0.02;
        const previewGeometry = new THREE.BoxGeometry(1, initialHeight, 1);
        const previewMaterial = new THREE.MeshBasicMaterial({ color: 0x888888, transparent: true, opacity: 0.5 });
        previewMesh = new THREE.Mesh(previewGeometry, previewMaterial);
        
        const planeY = -activeDrawingPlane.constant;
        previewMesh.position.copy(startPoint);
        previewMesh.position.y = planeY + initialHeight / 2;
        scene.add(previewMesh);
    }
}

function onPointerMove(event) {
    updateMouseAndRaycaster(event);

    // 그리기/돌출 상태를 먼저 확인하도록 순서 수정
    if (isExtruding) {
        const deltaY = event.clientY - lastMouseY;
        lastMouseY = event.clientY;
        const heightChange = -deltaY * 0.05;
        const oldHeight = extrudeTarget.geometry.parameters.height * extrudeTarget.scale.y;
        let newHeight = Math.max(0.1, oldHeight + heightChange);
        
        // 높이 스냅은 제거 (가이드라인 에러 방지)
        
        const newScaleY = newHeight / extrudeTarget.geometry.parameters.height;
        extrudeTarget.position.y += (newHeight - oldHeight) / 2;
        extrudeTarget.scale.y = newScaleY;

    } else if (isDrawing) {
        const currentPoint = new THREE.Vector3();
        if (raycaster.ray.intersectPlane(activeDrawingPlane, currentPoint)) {
            
            // 먼저 꼭짓점 스냅 적용
            let snappedPoint = getSnapPoint(currentPoint, activeDrawingPlane);
            
            // 꼭짓점 스냅이 없으면 축 스냅 적용
            if (snappedPoint.equals(currentPoint)) {
                snappedPoint = getAxisSnap(currentPoint, activeDrawingPlane);
            }

            const initialHeight = 0.02;
            const planeY = -activeDrawingPlane.constant;
            previewMesh.position.x = (snappedPoint.x + startPoint.x) / 2;
            previewMesh.position.z = (snappedPoint.z + startPoint.z) / 2;
            previewMesh.position.y = planeY + initialHeight / 2;
            previewMesh.scale.x = Math.abs(snappedPoint.x - startPoint.x);
            previewMesh.scale.z = Math.abs(snappedPoint.z - startPoint.z);
        }
    } else {
        // IDLE 상태일 때만 하이라이트 처리
        updateHighlight();
        if (isTexturingMode) {
            updateTextureHighlight();
        }
    }
}

function onPointerUp(event) {
    if (isExtruding) {
        const newWidth = extrudeTarget.geometry.parameters.width * extrudeTarget.scale.x;
        const newHeight = extrudeTarget.geometry.parameters.height * extrudeTarget.scale.y;
        const newDepth = extrudeTarget.geometry.parameters.depth * extrudeTarget.scale.z;
        const newGeom = new THREE.BoxGeometry(newWidth, newHeight, newDepth);
        
        // TransformCommand를 위한 새 상태
        const newTransformData = {
            geometry: newGeom,
            position: new THREE.Vector3(extrudeTarget.position.x, newHeight / 2, extrudeTarget.position.z),
            scale: new THREE.Vector3(1, 1, 1)
        };
        
        // 현재 객체를 undo 상태로 되돌리고, command를 통해 redo 상태로 만듦
        extrudeTarget.geometry.dispose();
        extrudeTarget.geometry = oldTransformData.geometry;
        extrudeTarget.position.copy(oldTransformData.position);
        extrudeTarget.scale.copy(oldTransformData.scale);

        const command = new TransformCommand(extrudeTarget, oldTransformData, newTransformData);
        history.execute(command);

        // 축 가이드 라인들만 제거 (높이 가이드라인은 사용 안함)
        clearAxisGuideLines();

        isExtruding = false;
        extrudeTarget = null;
        controls.enabled = true;
        oldTransformData = null; // 초기화

    } else if (isDrawing) {
        raycaster.setFromCamera(mouse, camera);
        const endPoint3D = new THREE.Vector3();
        raycaster.ray.intersectPlane(activeDrawingPlane, endPoint3D);
        
        // 먼저 꼭짓점 스냅 적용
        let snappedEndPoint = getSnapPoint(endPoint3D, activeDrawingPlane);
        
        // 꼭짓점 스냅이 없으면 축 스냅 적용
        if (snappedEndPoint.equals(endPoint3D)) {
            snappedEndPoint = getAxisSnap(endPoint3D, activeDrawingPlane);
        }
        if (snapGuide) snapGuide.visible = false; // 그리기 끝나면 가이드 숨김
        clearAxisGuideLines(); // 축 가이드 라인들만 정리

        const width = Math.abs(snappedEndPoint.x - startPoint.x);
        const depth = Math.abs(snappedEndPoint.z - startPoint.z);
        const initialHeight = 0.02;

        // 프리뷰 메시는 항상 제거
        if (previewMesh) {
            scene.remove(previewMesh);
            previewMesh.geometry.dispose();
            previewMesh.material.dispose();
            previewMesh = null;
        }

        if (width > 0.1 && depth > 0.1) {
            const boxGeometry = new THREE.BoxGeometry(width, initialHeight, depth);
            const materials = [];
            for (let i = 0; i < 6; i++) {
                materials.push(new THREE.MeshStandardMaterial({ color: 0xffffff, side: THREE.DoubleSide, transparent: true }));
            }
            const newBox = new THREE.Mesh(boxGeometry, materials);
            const planeY = -activeDrawingPlane.constant;
            newBox.position.x = (snappedEndPoint.x + startPoint.x) / 2;
            newBox.position.z = (snappedEndPoint.z + startPoint.z) / 2;
            newBox.position.y = planeY + initialHeight / 2;

            // Command를 통해서만 객체를 추가
            const command = new AddObjectCommand(scene, newBox, drawableObjects);
            history.execute(command);
        }

        isDrawing = false;
        controls.enabled = true;
        activeDrawingPlane = groundPlane;
    }
    // 다른 동작 후에도 하이라이트가 남아있지 않도록 정리
    clearTextureHighlight();
}

function updateHighlight() {
    if (isDrawing || isExtruding) {
        if(highlightMesh) highlightMesh.visible = false;
        return;
    }
    
    raycaster.setFromCamera(mouse, camera);
    const intersects = raycaster.intersectObjects(drawableObjects);

    let hovered = false;
    if (intersects.length > 0) {
        const intersection = intersects[0];
        const face = intersection.face;
        if (face.normal.y > 0.99) {
            hovered = true;
            const object = intersection.object;

            if (!highlightMesh) {
                const highlightMaterial = new THREE.MeshBasicMaterial({ color: 0x00aaff, transparent: true, opacity: 0.5, side: THREE.DoubleSide });
                const highlightGeometry = new THREE.PlaneGeometry(1, 1);
                highlightMesh = new THREE.Mesh(highlightGeometry, highlightMaterial);
                highlightMesh.rotation.x = -Math.PI / 2;
                scene.add(highlightMesh);
            }
            
            const targetWidth = object.geometry.parameters.width * object.scale.x;
            const targetHeight = object.geometry.parameters.height * object.scale.y;
            const targetDepth = object.geometry.parameters.depth * object.scale.z;
            
            highlightMesh.position.set(object.position.x, object.position.y + targetHeight / 2 + 0.01, object.position.z);
            highlightMesh.scale.set(targetWidth, targetDepth, 1);
            highlightMesh.visible = true;
        }
    }

    if (!hovered && highlightMesh) {
        highlightMesh.visible = false;
    }
}

function clearTextureHighlight() {
    if (highlightedFaceInfo.object) {
        // 저장해둔 원래 재질로 복원
        highlightedFaceInfo.object.material[highlightedFaceInfo.faceIndex] = highlightedFaceInfo.originalMaterial;
        highlightedFaceInfo.object.material.needsUpdate = true;
    }
    // 상태 초기화
    highlightedFaceInfo.object = null;
    highlightedFaceInfo.faceIndex = -1;
    highlightedFaceInfo.originalMaterial = null;
}

function updateTextureHighlight() {
    raycaster.setFromCamera(mouse, camera);
    const intersects = raycaster.intersectObjects(drawableObjects);

    if (intersects.length > 0) {
        const intersection = intersects[0];
        const object = intersection.object;
        const faceIndex = intersection.face.materialIndex;

        // 이미 같은 면이 하이라이트된 경우, 아무것도 안 함
        if (highlightedFaceInfo.object === object && highlightedFaceInfo.faceIndex === faceIndex) {
            return;
        }
        
        // 다른 면이 하이라이트된 경우, 이전 하이라이트를 먼저 복원
        clearTextureHighlight();

        // 새로운 면의 정보를 저장
        highlightedFaceInfo.object = object;
        highlightedFaceInfo.faceIndex = faceIndex;
        highlightedFaceInfo.originalMaterial = object.material[faceIndex];

        // 하이라이트 재질 적용
        object.material[faceIndex] = textureHighlightMaterial;
        object.material.needsUpdate = true;
        
    } else {
        // 마우스가 어떤 객체 위에도 없을 경우, 하이라이트 제거
        clearTextureHighlight();
    }
}

// --- 스냅 관련 함수 (정의를 위로 올림) ---
function setupSnapGuide() {
    const geometry = new THREE.SphereGeometry(0.05, 16, 16);
    const material = new THREE.MeshBasicMaterial({ color: 0xff00ff, transparent: true, opacity: 0.7 });
    snapGuide = new THREE.Mesh(geometry, material);
    snapGuide.visible = false;
    scene.add(snapGuide);
}

function updateAllVertices() {
    allVertices = [];
    drawableObjects.forEach(obj => {
        const positionAttribute = obj.geometry.getAttribute('position');
        const localVertices = [];
        for (let i = 0; i < positionAttribute.count; i++) {
            const vertex = new THREE.Vector3();
            vertex.fromBufferAttribute(positionAttribute, i);
            localVertices.push(vertex);
        }
        
        // 로컬 좌표를 월드 좌표로 변환하여 저장
        localVertices.forEach(vertex => {
            allVertices.push(vertex.clone().applyMatrix4(obj.matrixWorld));
        });
    });
}

function getSnapPoint(point, plane) {
    let closestPoint = null;
    let minDistance = snapDistance;

    allVertices.forEach(vertex => {
        // 현재 그리기 평면과 비슷한 높이에 있는 꼭짓점만 고려
        if (Math.abs(vertex.y - (-plane.constant)) < 0.1) {
            const distance = point.distanceTo(vertex);
            if (distance < minDistance) {
                minDistance = distance;
                closestPoint = vertex;
            }
        }
    });
    
    if (snapGuide) { // snapGuide가 초기화되었는지 확인
        snapGuide.visible = !!closestPoint;
        if(closestPoint) {
            snapGuide.position.copy(closestPoint);
        }
    }

    return closestPoint || point; // 스냅 포인트가 있으면 그것을, 없으면 원래 포인트를 반환
}

function getClickedVertex(event) {
    const rect = renderer.domElement.getBoundingClientRect();
    const mouse2D = new THREE.Vector2(event.clientX - rect.left, event.clientY - rect.top);
    const canvasSize = new THREE.Vector2(rect.width, rect.height);

    let clickedVertex = null;
    let minDistanceSq = 15 * 15; // 15px 반경 안의 꼭짓점을 클릭 대상으로 간주

    for (const vertex3D of allVertices) {
        // 꼭짓점의 3D 월드 좌표를 2D 화면 좌표로 변환
        const projectedPoint = vertex3D.clone().project(camera);

        // 화면 밖으로 나간 점은 무시
        if (projectedPoint.x < -1 || projectedPoint.x > 1 || projectedPoint.y < -1 || projectedPoint.y > 1) {
            continue;
        }

        const screenPoint = new THREE.Vector2(
            (projectedPoint.x + 1) * canvasSize.x / 2,
            (-projectedPoint.y + 1) * canvasSize.y / 2
        );

        const distanceSq = mouse2D.distanceToSquared(screenPoint);

        if (distanceSq < minDistanceSq) {
            minDistanceSq = distanceSq;
            clickedVertex = vertex3D;
        }
    }

    return clickedVertex;
}

function updateMouseAndRaycaster(event) {
    const rect = renderer.domElement.getBoundingClientRect();
    mouse.x = ((event.clientX - rect.left) / rect.width) * 2 - 1;
    mouse.y = -((event.clientY - rect.top) / rect.height) * 2 + 1;
    raycaster.setFromCamera(mouse, camera);
}

// 높이 스냅 함수 제거됨 (가이드라인 에러 방지)

// X/Z축 스냅 함수
function getAxisSnap(point, plane) {
    const snapThreshold = 0.5;
    let snappedPoint = point.clone();
    let hasSnap = false;

    drawableObjects.forEach(obj => {
        const objWidth = obj.geometry.parameters.width * obj.scale.x;
        const objDepth = obj.geometry.parameters.depth * obj.scale.z;
        
        // X축 스냅 (왼쪽, 중앙, 오른쪽 모서리)
        const xPositions = [
            obj.position.x - objWidth / 2,
            obj.position.x,
            obj.position.x + objWidth / 2
        ];
        
        // Z축 스냅 (앞, 중앙, 뒤 모서리)
        const zPositions = [
            obj.position.z - objDepth / 2,
            obj.position.z,
            obj.position.z + objDepth / 2
        ];

        // X축 스냅 체크
        xPositions.forEach(xPos => {
            if (Math.abs(point.x - xPos) < snapThreshold) {
                snappedPoint.x = xPos;
                showAxisGuideLine('x', xPos, obj.position.z, objDepth);
                hasSnap = true;
            }
        });

        // Z축 스냅 체크
        zPositions.forEach(zPos => {
            if (Math.abs(point.z - zPos) < snapThreshold) {
                snappedPoint.z = zPos;
                showAxisGuideLine('z', zPos, obj.position.x, objWidth);
                hasSnap = true;
            }
        });
    });

    if (!hasSnap) {
        clearAxisGuideLines();
    }

    return snappedPoint;
}

// 높이 가이드 라인 함수 제거됨

// X/Z축 가이드 라인 표시
function showAxisGuideLine(axis, position, centerPos, size) {
    clearAxisGuideLines();
    
    let geometry, guideLine;
    const material = new THREE.MeshBasicMaterial({ 
        color: 0x00ff00, 
        transparent: true, 
        opacity: 0.7 
    });

    if (axis === 'x') {
        geometry = new THREE.PlaneGeometry(0.05, size + 2);
        guideLine = new THREE.Mesh(geometry, material);
        guideLine.rotation.x = -Math.PI / 2;
        guideLine.position.set(position, 0.01, centerPos);
    } else { // z축
        geometry = new THREE.PlaneGeometry(size + 2, 0.05);
        guideLine = new THREE.Mesh(geometry, material);
        guideLine.rotation.x = -Math.PI / 2;
        guideLine.position.set(centerPos, 0.01, position);
    }
    
    scene.add(guideLine);
    axisGuideLines.push(guideLine);
}

// 전체 가이드 라인 제거 함수는 사용 안함 (축 가이드만 사용)

// 축 가이드 라인만 제거
function clearAxisGuideLines() {
    axisGuideLines.forEach(line => {
        scene.remove(line);
        line.geometry.dispose();
        line.material.dispose();
    });
    axisGuideLines = [];
}

// 6. 렌더링 루프 및 반응형 처리
function resizeRendererToDisplaySize(renderer) {
    const canvas = renderer.domElement;
    const width = canvas.clientWidth;
    const height = canvas.clientHeight;
    const needResize = canvas.width !== width || canvas.height !== height;
    if (needResize) {
        renderer.setSize(width, height, false);
    }
    return needResize;
}

function animate() {
    requestAnimationFrame(animate);

    if (resizeRendererToDisplaySize(renderer)) {
        const canvas = renderer.domElement;
        camera.aspect = canvas.clientWidth / canvas.clientHeight;
        camera.updateProjectionMatrix();
    }
    
    controls.update();
    renderer.render(scene, camera);
}

animate(); 