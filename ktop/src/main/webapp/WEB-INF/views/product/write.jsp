<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link rel="stylesheet" href="<c:url value='/resources/static/css/product.css' />">
<style>
.category-container {
	padding: 15px;
}

.parent-category-list {
	display: flex;
	gap: 10px;
	margin-bottom: 12px;
}

.parent-btn {
	border: 1px solid #ccc;
	background-color: #fff;
	padding: 6px 14px;
	border-radius: 4px;
	cursor: pointer;
	transition: all 0.2s ease;
	font-weight: 500;
}

.parent-btn[data-selected="true"],
.parent-btn:hover {
	background-color: #007acc;
	color: white;
	border-color: #007acc;
}

.child-category-list .child-group {
	display: flex;
	flex-wrap: wrap;
	gap: 10px;
	margin-top: 10px;
}

.radio-option {
	border: 1px solid #ccc;
	padding: 6px 12px;
	border-radius: 4px;
	background: white;
	cursor: pointer;
	transition: 0.2s;
}

.radio-option input[type="radio"] {
	margin-right: 6px;
}
</style>
		<section class="sub_container"> 
		<h6>서브 콘텐츠</h6> 
			<div class="sub_category_box">  
		 
									<div class="lnb">
				<div class="web_size">  
					<ul>
						<c:forEach var="category" items="${categorySubList}">
							<li ${category.id eq categoryNum ? 'class="on"' : ''}><a href="<c:url value='/category/${category.id}' />">${category.name}</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			
		<div class="web_size">  
					<div class="sub_top">  
				<h2>상품관리</h2>
			</div> 
		
			<div class="sub_cont">
				 
				<h3 class="sub_title">MYPAGE</h3>
						 <!--
<div class="product_tabmenu_wrap">

	<div class="product_tabmenu_box">
		<ul class="product_tabmenu_list01">
			<li>
				<div class="product_tabmenu_tit">목재</div>
				<ul class="product_tabmenu_list02">
					<li>전체</li>
					<li class="on">각목
						<div class="product_tabmenu_list03_box">
							<div class="product_tabmenu_list03_tr"></div>
							<ul class="product_tabmenu_list03">
								<li>긴각목</li>
								<li>짧은각목</li>
							</ul>
						</div>
					</li> 
					<li>좋은목재</li>
					<li>전체</li> 
					<li>판자</li>
					<li>좋은목재</li>
				</ul>
			</li>
			<li>
				<div class="product_tabmenu_tit">실내마감재</div>
				<ul class="product_tabmenu_list02">
					<li>전체</li> 
					<li>판자</li>
					<li>좋은목재</li>
				</ul>
			</li>
			<li>
				<div class="product_tabmenu_tit">실외마감재</div>
				<ul class="product_tabmenu_list02">
					<li>전체</li>
					<li>좋은목재</li>
					<li>각목</li> 
					<li>각목</li> 
				</ul>
			</li>
			<li>
				<div class="product_tabmenu_tit">석고</div>
				<ul class="product_tabmenu_list02">
					<li>전체</li>
					<li>각목</li>
					<li>판자</li>
					<li>좋은목재</li>
				</ul>
			</li> 
			<li>
				<div class="product_tabmenu_tit">단열재</div>
				<ul class="product_tabmenu_list02">
					<li>전체</li>
					<li>각목</li>
					<li>판자</li>
					<li>좋은목재</li>
				</ul>
			</li>  
		</ul>
	</div>
 

</div>

-->
<form name="material_form" method="post" enctype="multipart/form-data" action="">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

<table class="gtable">
<colgroup>
	<col style="width:15%;" />
	<col />
	<col style="width:15%;" />
	<col />
</colgroup>
<tbody>
<tr>
	<th><label for="name">자재이름</label> <em class="fpilsu">*</em></th>
    <td>
		<input type="text" id="name" name="name" class="input_form w100p" title="자재이름" value="" />
	</td>
	<th><label for="price">가격</label> <em class="fpilsu">*</em></th>
    <td>
		<input type="text" id="price" name="price" class="input_form w100p numeric" title="가격" value="" />
	</td>
</tr>

<tr>
	<th><label for="materialCategoryId">카테고리</label> <em class="fpilsu">*</em></th>
    <td colspan="3">
		<div class="category-container">
			<div class="parent-category-list">
				<c:forEach var="parent" items="${materialList}">
					<button type="button" class="parent-btn"
					        data-parent-id="${parent.id}"
					        onclick="selectParent(this)"
					        ${param.categoryId eq parent.id ? 'data-selected=true' : ''}>
						${parent.name}
					</button>
				</c:forEach>
			</div>
		
			<div class="child-category-list">
				<c:forEach var="parent" items="${materialList}">
					<div class="child-group" id="child-${parent.id}" style="display: none;">
						<c:forEach var="child" items="${parent.children}">
							<label class="radio-option">
								<input type="radio" name="materialCategoryId" value="${child.id}"
									<c:if test="${param.materialCategoryId eq child.id}">checked</c:if> />
								${child.name}
							</label>
						</c:forEach>
					</div>
				</c:forEach>
			</div>
		</div>

	</td>

</tr>
<tr>
	<th>썸네일</th>
    <td colspan="3">

<div class="file_box">
	<div class="file_preview" id="file_preview_1">
			</div>
	<label for="file"><div class="file_btn" title="파일첨부">첨부</div><input type="file" id="file" name="file" class="up_files"  data-target="file_preview_1" data-checkid="gc_file_del_1" accept="image/*" /></label>
	</div></td>
</tr>

<tr>
	<th>자재 설명</th>
    <td colspan="3">
		<textarea id="description" name="description" class="textarea_form h100p summernote" title="소개" data-table="sys_person_list" data-target=""></textarea>
	</td>
</tr>
</tbody>
</table> 
<div class="pt20 center">
	<button type="submit" class="ab_m ab_blue"><i class="fas fa-save"></i>저장</button>
	<a href="<c:url value='/category/${categoryNum}/material' />"><div class="ab_m"><i class="fas fa-undo"></i>뒤로</div></a>
</div>

</form>


	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script>
function selectParent(btn) {
	const parentId = btn.getAttribute('data-parent-id');

	// 탭 버튼 활성화 표시
	document.querySelectorAll('.parent-btn').forEach(el => el.removeAttribute('data-selected'));
	btn.setAttribute('data-selected', 'true');

	// 하위 카테고리 전환
	document.querySelectorAll('.child-group').forEach(group => group.style.display = 'none');
	document.getElementById('child-' + parentId).style.display = 'flex';
}

$('form[name="material_form"]').on('submit', function(e) {
	const name = $('#name').val().trim();
	const price = $('#price').val().trim();
	const materialCategoryId = $('input[name="materialCategoryId"]:checked').val();
	const descriptionHtml = $('#description').summernote('code');
	
	if (name === "") {
		alert("자재이름을 입력해 주세요.");
		$('#name').focus();
		e.preventDefault();
		return false;
	}
	
	if (price === "") {
		alert("가격을 입력해 주세요.");
		$('#price').focus();
		e.preventDefault();
		return false;
	}
	
	if (!materialCategoryId) {
		alert("카테고리를 선택해 주세요.");
		e.preventDefault();
		return false;
	}
	
	if ($('#file')[0].files.length < 1) {
		alert("썸네일 이미지를 업로드 해주세요.");
		e.preventDefault();
		return false;
	}
	
	if (isSummernoteContentEmpty(descriptionHtml)) {
		alert("자재 설명을 입력해 주세요.");
		$('#description').focus();
		e.preventDefault();
		return false;
	}
	
	return true;
});

function isSummernoteContentEmpty(html) {
	const hasImage = /<img\b[^>]*>/i.test(html);
	const text = html
		.replace(/<[^>]*>/gi, '')
		.replace(/&nbsp;/gi, '')
		.replace(/\u200B/g, '')
		.trim();
	return !hasImage && text === '';
}
</script>



<script src="<c:url value='/resources/static/js/product.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>