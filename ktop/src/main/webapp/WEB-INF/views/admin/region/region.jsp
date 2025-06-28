<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
<link rel="stylesheet" href="<c:url value='/resources/static/css/person.css' />">
<div class="main_contents">
	<div class="sub_top">
		<h2>지역 관리</h2>
	</div>
	<div class="ghalf">

		<h4>지역 관리</h4>

		<div id="add_box" class="add_layer">
			<table class="gtable" style="width: 380px;">
				<colgroup>
					<col style="width: 100px;" />
					<col />
					<col style="width: 60px;" />
				</colgroup>
				<tbody>
					<tr>
						<th><label for="group_name">세부 지역명</label></th>
						<td>
							<input type="text" id="agroup_name" name="agroup_name" id="agroup_name" class="input_form w150p required" title="세부 지역명" placeholder="세부 지역명" /> <input type="button" class="ab_m ab_red" value="생성" id="btn_subcat_add" />
						</td>
						<td class="center">
							<div class="ab_m" id="cate_subclose_btn">닫기</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>

		<div class="gcontrol">
			<input type="text" name="agroup_name" class="input_form w200p required" title="새로운 지역명" placeholder="새로운 지역명" autofocus id="text_region_add" /> <input type="button" class="ab_m ab_blue" value="+ 지역 생성" id="btn_region_add" />
		</div>

		<table class="gtable">
			<colgroup>
				<col style="width: 100px;" />
				<col />
				<col style="width: 120px;" />
				<col style="width: 120px;" />
			</colgroup>
			<thead>
				<tr>
					<th>번호</th>
					<th>지역명</th>
					<th>출력구분</th>
					<th>작업</th>
				</tr>
			</thead>
			<tbody id="table_body_region">
				<c:forEach var="region" items="${regionList}">
				    <tr id="cat_${region.id}">
						<td class="center ">${region.id}</td>
						<td>
							<div class="input_list">
								<span class="line"><input type="text" class="input_form" style="width: 100%;" value="${region.name}" /></span>
							</div>
							<div class="arr_list">
								<div class="ab_m ab_blue cate_subadd_btns"  onclick="addSubCategory(this)">+</div>
							</div>
						</td>
						<td class="center">
							<select style="width: 100%;">
								<option value="true"  <c:if test="${region.active == true}">selected</c:if>>사용</option>
						    	<option value="false" <c:if test="${region.active == false}">selected</c:if>>사용안함</option>
							</select>
						</td>
						<td class="center">
							<div class="ab_m delete_btns Fix_FormBtns" onclick="updateCategory(this, ${region.id})">변경</div>
							<div class="ab_m delete_btns Fix_FormBtns" onclick="removeCategory(this, ${region.id})">삭제</div>
						</td>
					</tr>
			
				    <c:forEach var="child" items="${region.children}">
				        <tr  id="cat_${child.id}" data-parent_id="${child.parentId}">
							<td class="center ">${child.id}</td>
							<td>
								<div class="input_list2">
									<span class="line"><input type="text" class="input_form" style="width: 95%;" value="${child.name}" /></span>
								</div>
								<div class="arr_list">
									<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>
								</div>
							</td>
							<td class="center">
								<select style="width: 100%;">
									<option value="true"  <c:if test="${child.active == true}">selected</c:if>>사용</option>
						    		<option value="false" <c:if test="${child.active == false}">selected</c:if>>사용안함</option>
								</select>
							</td>
							<td class="center">
								<div class="ab_m delete_btns Fix_FormBtns" onclick="updateCategory(this)">변경</div>
								<div class="ab_m delete_btns Fix_FormBtns" onclick="removeCategory(this)">삭제</div>
							</td>
						</tr>
				    </c:forEach>
				</c:forEach>
			</tbody>
		</table>

	</div>
</div>
<script>

	const addSubCategory = async (e) =>{
		const parentIdEl = $(e).parent().parent().parent().attr('id');
		
		show_boxposition($(e).get(0), $('#add_box'), 'bottom_right');
		$('#menu_name,#cate_name').focus();
		
		$('#add_box').parent().append('<div class="add_layer_fade"></div>');
		$('.add_layer_fade').css({'width':$(document).width(),'height':$(document).height()});
		
		$("#btn_subcat_add").off('click').on('click', async () => {
			if(parentIdEl == 0){
				return alert("상위 카테고리가 선택되지 않았습니다.");
			}
			
			const menuName = $("#agroup_name");
			if(menuName.val().trim() == ""){
				return alert("메뉴명은 필수 입력입니다.");
			}
			
			try {
				// 비동기 서버 요청
				const response = await axios.post('<c:url value="/admin/region/add"/>', {
				    name: menuName.val().trim(),
				    active : true,
				    parentId : parentIdEl.replace("cat_", "")
				}, {
				    headers: {
				        'Content-Type': 'application/json'
				    }
				});
				
				console.log(response.data);
				
				const data = response.data;
				const id = data.id;
				const parentId = data.parentId == null ? "" : data.parentId;
				const name = data.name;
				const active = data.active;

				// 행 추가
				let text = '';
				text += '<tr id="cat_' + id + '" data-parent_id="'+parentId+'">';
				text +=     '<td class="center">' + id + '</td>';
				text +=     '<td>';
				text +=         '<div class="input_list2">';
				text +=             '<span class="line">';
				text +=                 '<input type="text" class="input_form" style="width: 95%" value="' + name + '" />';
				text +=             '</span>';
				text +=         '</div>';
				text +=         '<div class="arr_list">';
				text +=             '<div class="ab_m ab_h alert_btns" data-txt="더 이상 하위 메뉴 생성이 불가능합니다.">+</div>';
				text +=         '</div>';
				text +=     '</td>';
				text +=     '<td class="center">';
				text +=         '<select style="width: 100%;">';
				text +=             '<option value="false" ' + (active ? '' : 'selected') + '>사용안함</option>';
				text +=             '<option value="true" ' + (active ? 'selected' : '') + '>사용</option>';
				text +=         '</select>';
				text +=     '</td>';
				text +=     '<td class="center">';
				text += 		'<div class="ab_m delete_btns Fix_FormBtns" onclick="updateCategory(this)">변경</div>'
				text += 		'<div class="ab_m delete_btns Fix_FormBtns" onclick="removeCategory(this)">삭제</div>';
				text +=     '</td>';
				text += '</tr>';

				const targetList = $('[data-parent_id="' + parentId + '"]');

				if (targetList.length > 0) {
					// 자식 요소가 하나 이상 있을 경우 → 마지막 자식 뒤에 삽입
					targetList.last().after(text);
				} else {
					// 자식 요소가 없을 경우 → 부모 요소 바로 뒤에 삽입
					$('#' + parentIdEl).after(text);
				}
				menuName.val(""); // 입력창 초기화
				
				if($('#add_box').length || $('#add_box2').length) {
					$('#add_box, #add_box2').hide();
					$('.add_layer_fade').remove();
				}

			} catch (error) {
				console.error("카테고리 추가 실패:", error);
				alert("카테고리 추가 중 오류가 발생했습니다.");
			}
		});
	}
	
	
	/* $('.cate_subadd_btns').click(function() {
		$('#parent_id').val($(this).attr('data-parent_id'));
		show_boxposition(this, $('#add_box'), 'bottom_right');
		$('#menu_name,#cate_name').focus();
		
		$('#add_box').parent().append('<div class="add_layer_fade"></div>');
		$('.add_layer_fade').css({'width':$(document).width(),'height':$(document).height()});
	}); */

	$("#btn_region_add").click(async (e) =>{
		const menuName = $("#text_region_add");
		if(menuName.val().trim() == ""){
			return alert("메뉴명은 필수 입력입니다.");
		}
		try {
			// 비동기 서버 요청
			const response = await axios.post('<c:url value="/admin/region/add"/>', {
			    name: menuName.val().trim(),
			    active : true
			}, {
			    headers: {
			        'Content-Type': 'application/json'
			    }
			});
			
			console.log(response.data);
			
			const data = response.data;
			const id = data.id;
			const parentId = data.parentId == null ? "" : data.parentId;
			const name = data.name;
			const active = data.active;
			// 행 추가
			let text = '';
			text += '<tr id="cat_' + id + '">';
			text +=     '<td class="center">' + id + '</td>';
			text +=     '<td>';
			text +=         '<div class="input_list">';
			text +=             '<span class="line">';
			text +=                 '<input type="text" class="input_form" style="width: 100%" value="' + name + '" />';
			text +=             '</span>';
			text +=         '</div>';
			text +=         '<div class="arr_list">';
			text +=             '<div class="ab_m ab_blue cate_subadd_btns" onclick="addSubCategory(this)">+</div>';
			text +=         '</div>';
			text +=     '</td>';
			text +=     '<td class="center">';
			text +=         '<select style="width: 100%;">';
			text +=             '<option value="false" ' + (active ? '' : 'selected') + '>사용안함</option>';
			text +=             '<option value="true" ' + (active ? 'selected' : '') + '>사용</option>';
			text +=         '</select>';
			text +=     '</td>';
			text +=     '<td class="center">';
			text += 		'<div class="ab_m delete_btns Fix_FormBtns" onclick="updateCategory(this, '+id+')">변경</div>'
			text += 		'<div class="ab_m delete_btns Fix_FormBtns" onclick="removeCategory(this, '+id+')">삭제</div>';
			text +=     '</td>';
			text += '</tr>';

			$("#table_body_region").append(text);
			menuName.val(""); // 입력창 초기화

		} catch (error) {
			console.error("카테고리 추가 실패:", error);
			alert("카테고리 추가 중 오류가 발생했습니다.");
		}
	})
	
	const removeCategory = async (e, parent) =>{
		
		if(confirm("선택한 카테고리를 삭제하시겠습니까?\n상위 카테고리 삭제 시 하위카테고리도 같이 삭제됩니다.")){
			const parentIdEl = $(e).parent().parent();
			const parentId = $(e).parent().parent().attr('id')
			console.log(parentId)
			try {
				const response = await axios.delete('<c:url value="/admin/region/del"/>', {
					params: {
				        id: parentId.replace("cat_", "")
				    }
				}, {
				    headers: {
				        'Content-Type': 'application/json'
				    }
				});
				console.log(response.data);
			} catch (error) {
				console.error("지역 삭제 실패:", error);
				if (error.response && error.response.status === 409) {
					alert(error.response.data); // 서버에서 내려준 메시지
				} else {
					alert("지역 삭제 중 오류가 발생했습니다.");
				}
				return;
			}
			if (parent) {
			    const elements = $('[data-parent_id="' + parent + '"]');
			    console.log(elements)
			    elements.remove();
			}
			parentIdEl.remove();
		}
	}
	
	const updateCategory = async (e, parent) =>{
		
		const parentIdEl = $(e).parent().parent();
		const parentId = $(e).parent().parent().attr('id')
		const activeVal = parentIdEl.find('select').val();
		//console.log(parentIdEl.find('.input_form').val(), parentId, parentIdEl.find('select').val())
		const menuName = parentIdEl.find('.input_form').val().trim()
		if(menuName == ""){
			return alert("메뉴명은 필수 입력 입니다.")
		}
		
		const parentDataId = parentIdEl.data('parent_id');
		if (parentDataId !== undefined && parentDataId !== "") {
			const parentRow = $('#cat_' + parentDataId);
			const parentActive = parentRow.find('select').val();
			if (activeVal !== parentActive) {
				parentIdEl.find('select').val(parentActive);
				alert('부모카테고리의 사용여부와 다르게 변경할 수 없습니다.')
				return;
			}
		}
		
		try {
			const response = await axios.put('<c:url value="/admin/region/mod"/>', {
				id: parentId.replace("cat_", ""),
		        name : menuName,
		        active : activeVal
			}, {
			    headers: {
			        'Content-Type': 'application/json'
			    }
			});
		} catch (error) {
			console.error("카테고리 수정 실패:", error);
			alert("카테고리 수정 중 오류가 발생했습니다.");
		}
		if (parent) {
			$('[data-parent_id="' + parent + '"]').each(function() {
                 $(this).find('select').val(activeVal);
             });
		}
	}
</script>
<!-- main_contents -->
<script src="<c:url value='/resources/static/js/person.js' />"></script>
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>