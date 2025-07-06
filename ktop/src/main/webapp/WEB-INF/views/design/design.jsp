<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>


<script type="importmap">
    {
        "imports": {
            "three": "https://unpkg.com/three@0.160.0/build/three.module.js",
            "three/addons/": "https://unpkg.com/three@0.160.0/examples/jsm/"
        }
    }
</script>

<script src="<c:url value='/resources/static/js3d/History.js' />" defer></script>
<script type="module" src="<c:url value='/resources/static/js3d/main.js' />" defer></script>
<link rel="stylesheet" href="<c:url value='/resources/static/css/style3d.css' />">

<div id="container" class="sub">
	<div class="sub_container">
	    <div class="sub_visual" style="margin-top: -60px;">
	        <div class="web_size">
	            <div class="sub_top">  
					<h2>3D 미리보기</h2>
				</div>
	        </div>
	    </div>
	    <div class="sub_wrap">
	        <div class="web_size" style="display: flex;">
	            
	            <%-- 3D 미리보기 페이지 내용 시작 --%>
	            
	            <canvas id="c"></canvas>
                <div id="texture-palette">
                    <h3>텍스처 선택</h3>
                    <img src="<c:url value='/resources/static/textures/wood.jpg' />" alt="Wood Texture" data-texture="<c:url value='/resources/static/textures/wood.jpg' />" class="texture-option">
                    <img src="<c:url value='/resources/static/textures/brick.jpg' />" alt="Brick Texture" data-texture="<c:url value='/resources/static/textures/brick.jpg' />" class="texture-option">
                    <img src="<c:url value='/resources/static/textures/stone.jpg' />" alt="Stone Texture" data-texture="<c:url value='/resources/static/textures/stone.jpg' />" class="texture-option">
                </div>

                <!-- 컨텍스트 메뉴 -->
                <div id="context-menu" class="context-menu">
                    <div class="context-menu-item" id="delete-object">객체 삭제</div>
                </div>
	            
	            <%-- 3D 미리보기 페이지 내용 끝 --%>
	            
	        </div>
	    </div>
    </div>
</div>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>