<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<link rel="stylesheet" href="<c:url value='/resources/static/css/company.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/css/jquery-ui.min.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/plugin/editor/bootstrap.min.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/plugin/editor/summernote.min.css' />">

	
		<section class="sub_container"> 
		<h6>서브 콘텐츠</h6> 
			<div class="sub_category_box">  
		 
									<div class="lnb">
				<div class="web_size">  
					<ul>	
												<li class="on"><a href="<c:url value='/partner' />" >협력사 소개</a></li>
											</ul>
				</div>
			</div>
			
		<div class="web_size">  
					<div class="sub_top">  
				<h2>협력사 등록</h2>
			</div> 
		
			<div class="sub_cont"> 
			
						
 
		 
			
			
  
				 
				<h3 class="sub_title">자재</h3>
						
<!-- <h4>업체정보 수정</h4> -->

<form name="company_form" method="post" enctype="multipart/form-data" action="">

<table class="gtable">
<colgroup>
	<col style="width:15%;" />
	<col />
	<col style="width:15%;" />
	<col />
</colgroup>
<tbody>
<tr>
	<th><label for="company_title">업체명</label></th>
    <td>
    	<div>${company.companyName}</div>
	</td>
	<th><label for="company_ceo">대표자명</label></th>
    <td>
		<div>${company.ceoName}</div>
	</td>
</tr>
<tr>
	<th><label for="company_tel">전화번호</label></th>
    <td>
		<div>${company.phone}</div>
	</td>
	<th><label for="company_email">이메일</label></th>
    <td>
		<div>${company.email}</div>
	</td>
</tr>
<tr>
	<th><label for="company_zip">주소</label></th>
    <td colspan="3">
		<div>${company.zipcode}</div>
		<div>${company.address1}</div>
		<div>${company.address2}</div>
	</td>
</tr>
<tr>
	<th><label for="company_homepage">홈페이지</label></th>
    <td>
		<div>${company.homepage}</div>
	</td>
	<th><label for="company_area">지역 선택</label></th>
	<td>
		<div>${company.regionName}</div>
	</td>
</tr>
<tr>
	<th>사업자등록증 사본</th>
    <td colspan="3">

<div class="file_box">
	<div class="file_preview" id="file_preview_1">
									<c:choose>
										<c:when test="${fn:contains(company.companyFileList[0].file.mimeType, 'image')}">
											<img src="<c:url value='${company.companyFileList[0].file.filePath}' />" alt="${company.companyFileList[0].file.originalName}" />
										</c:when>
										<c:otherwise>
											<i class="fas fa-save fa-3x"></i>
										</c:otherwise>
									</c:choose>									
						</div>
	</div></td>
</tr>
<tr>
	<th>소개 이미지</th>
    <td colspan="3">
		<div class="file_box">
			<div class="file_preview" id="file_preview_2">
				<img src="<c:url value='${company.companyFileList[1].file.filePath}' />" alt="${company.companyFileList[1].file.originalName}" />
			</div>
			
		</div>
	</td>
</tr>
<tr>
	<th>협력사 소개</th>
    <td colspan="3">
		<textarea id="descriptionHtml" name="descriptionHtml" class="textarea_form h100p required summernote" title="협력사 소개" data-table="sys_company_list" data-target="1"></textarea>
	</td>
</tr>
</tbody>
</table> 
<div class="pt20 center">
	<button type="submit" class="bbs_btn01">저장하기</button>&nbsp;&nbsp;
	<a href="<c:url value='/partner/join' />"><div class="bbs_btn02">뒤로가기</div></a>
</div>

</form>

	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script>
	
</script>
<script src="<c:url value='/resources/static/js/company.js' />"></script>
<script src="<c:url value='/resources/static/js/jquery-ui.min.js' />"></script>
<script src="<c:url value='/resources/static/plugin/editor/bootstrap.min.js' />"></script>
<script src="<c:url value='/resources/static/plugin/editor/summernote.min.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>