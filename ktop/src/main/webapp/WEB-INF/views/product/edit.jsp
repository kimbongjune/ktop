<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link rel="stylesheet" href="<c:url value='/resources/static/css/product.css' />">

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
		<input type="text" id="name" name="name" class="input_form w100p" title="자재이름" value="${material.name}" />
	</td>
	<th><label for="price">가격</label> <em class="fpilsu">*</em></th>
    <td>
		<input type="text" id="price" name="price" class="input_form w100p numeric" title="가격" value="${material.price}" />
	</td>
</tr>

<tr>
	<th><label for="materialCategoryId">카테고리</label> <em class="fpilsu">*</em></th>
    <td colspan="3">
		<c:forEach var="materials" items="${materialList}">
			<label>
				<input type="radio" name="materialCategoryId" value="${materials.id}" <c:if test="${material.materialCategoryId eq materials.id}">checked</c:if> />
				${materials.name}
			</label>
		</c:forEach>
	</td>
</tr>
<tr>
	<th><label for="active">판매여부</label> <em class="fpilsu">*</em></th>
    <td colspan="3">
		<input id="active" name="active" type="checkbox" <c:if test="${material.active eq true}">checked</c:if> />
	</td>
</tr>
<tr>
	<th>썸네일</th>
    <td colspan="3">

<div class="file_box">
	<div class="file_preview" id="file_preview_1">
									<img src="<c:url value='${material.materialFile.file.filePath}' />" alt="${material.materialFile.file.originalName}" />				
						</div>
	<label for="file">
	<div class="file_btn" title="파일첨부">첨부</div><input type="file" id="file" name="file" class="up_files"  data-target="file_preview_1" data-checkid="gc_file_del_1"  /></label>
		<div class="file_btn ab_red cursor del_files" data-previewid="file_preview_1" data-checkid="gc_file_del_1" title="파일삭제">삭제</div>
	<input type="hidden" name="delFile" value="${material.materialFile.file.id}"/>
	</div></td>
</tr>

<tr>
	<th>자재 설명</th>
    <td colspan="3">
		<textarea id="description" name="description" class="textarea_form h100p summernote" title="소개" data-table="sys_person_list" data-target="">${material.description}</textarea>
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
<script src="<c:url value='/resources/static/js/product.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>