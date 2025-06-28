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
												<li class=""><a href="<c:url value='/user/mypage' />" >회원정보관리</a></li>
												<li class="on"><a href="<c:url value='/user/company' />" >업체정보관리</a></li>
											</ul>
				</div>
			</div>
			
		<div class="web_size">  
					<div class="sub_top">  
				<h2>업체정보관리</h2>
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">MYPAGE</h3>
						
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
	<th><label for="companyName">업체명</label> <em class="fpilsu">*</em></th>
    <td>
		<input type="text" id="companyName" name="companyName" class="input_form w90" title="업체명" value="${company.companyName}" />
	</td>
	<th><label for="ceoName">대표자명</label> <em class="fpilsu">*</em></th>
    <td>
		<input type="text" id="ceoName" name="ceoName" class="input_form w90" title="대표자명" value="${company.ceoName}" />
	</td>
</tr>
<tr>
	<th><label for="phone">전화번호</label> <em class="fpilsu">*</em></th>
    <td>
		<input type="tel" id="phone" name="phone" class="telnum input_form w150p hypenauto" title="전화번호" value="${company.phone}" />
	</td>
	<th><label for="email">이메일</label> <em class="fpilsu">*</em></th>
    <td>
		<input type="text" id="email" name="email" class="input_form w90" title="이메일" value="${company.email}" />
	</td>
</tr>
<tr>
	<th><label for="company_zip">주소</label></th>
    <td colspan="3">
		<input type="text" id="zipcode" name="zipcode" class="input_form numeric w70p" readonly minlength="5" maxlength="5" title="우편번호" data-zip="company_zip" data-addr1="company_addr1" data-addr2="company_addr2" value="${company.zipcode}" />&nbsp;
		<div class="ab_m zip_search_btns" data-zip="zipcode" data-addr1="address1" data-addr2="address2">우편번호검색</div>
		<input type="text" id="address1" name="address1" class="input_form w90 mt5" title="주소" value="${company.address1}" /><br />
		<input type="text" id="address2" name="address2" class="input_form w300p mt5" title="상세주소" value="${company.address2}" /> <label for="address2">상세주소 입력</label>
	</td>
</tr>
<tr>
	<th><label for="homepage">홈페이지</label></th>
    <td>
		<input type="text" id="homepage" name="homepage" class="input_form w90" title="홈페이지" value="${company.homepage}" />
	</td>
	<th><label for="regionId">지역 선택</label> <em class="fpilsu">*</em></th>
	<td>
		<select id="regionId" name="regionId" class="" title="지역 선택">
			<option value="">:선택:</option>
			<c:forEach var="region" items="${regionList}">
				<option ${company.regionId eq region.id ? "selected" : ""} value='${region.id}' >${region.name}</option>
				<c:forEach var="child" items="${region.children}">
					<option ${company.regionId eq child.id ? "selected" : ""} value='${child.id}' >&nbsp;&nbsp;&nbsp;&nbsp;┖${child.name}</option>
				</c:forEach>
			</c:forEach>
		</select>
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
	<label for="file1"><div class="file_btn" title="파일첨부">첨부</div><input type="file" id="file1" name="file1" class="up_files"  data-target="file_preview_1" data-checkid="gc_file_del_1"  /></label>
		<div class="file_btn ab_red cursor del_files" data-previewid="file_preview_1" data-checkid="gc_file_del_1" title="파일삭제">삭제</div>
	<input type="hidden" name="delFile1" value="${company.companyFileList[0].id}"/>
	</div></td>
</tr>
<tr>
	<th>소개 이미지</th>
    <td colspan="3">

<div class="file_box">
	<div class="file_preview" id="file_preview_2">
									<img src="<c:url value='${company.companyFileList[1].file.filePath}' />" alt="${company.companyFileList[1].file.originalName}" />
						</div>
	<label for="file2"><div class="file_btn" title="파일첨부">첨부</div><input type="file" id="file2" name="file2" class="up_files"  data-target="file_preview_2" data-checkid="gc_file_del_2" accept="image/*" /></label>
		<div class="file_btn ab_red cursor del_files" data-previewid="file_preview_2" data-checkid="gc_file_del_2" title="파일삭제">삭제</div>
	<input type="hidden" name="delFile2" value="${company.companyFileList[1].id}"/>
	</div></td>
</tr>
<tr>
	<th>협력사 소개</th>
    <td colspan="3">
		<textarea id="descriptionHtml" name="descriptionHtml" class="textarea_form h100p required summernote" title="협력사 소개" data-table="sys_company_list" data-target="7">${company.descriptionHtml}</textarea>
	</td>
</tr>
</tbody>
</table> 
<div class="pt20 center">
	<button type="submit" class="bbs_btn01">저장하기</button>&nbsp;&nbsp;
	<a href="<c:url value='/user/company' />"><div class="bbs_btn02">뒤로가기</div></a>
</div>

</form>

	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script>
$('form[name="company_form"]').on('submit', function(e) {
	const companyName = $('#companyName').val().trim();
	const ceoName = $('#ceoName').val().trim();
	const phone = $('#phone').val().trim();
	const email = $('#email').val().trim();
	const zipcode = $('#zipcode').val().trim();
	const address1 = $('#address1').val().trim();
	const address2 = $('#address2').val().trim();
	const regionId = $('#regionId').val().trim();
	const descriptionHtml = $('#descriptionHtml').summernote('code');
	
	if (companyName === "") {
		alert("업체명을 입력해 주세요.");
		$('#companyName').focus();
		e.preventDefault();
		return;
	}

	if (ceoName === "") {
		alert("대표자명을 입력해 주세요.");
		$('#ceoName').focus();
		e.preventDefault();
		return;
	}

	if (phone === "") {
		alert("전화번호를 입력해 주세요.");
		$('#phone').focus();
		e.preventDefault();
		return;
	}

	if (email === "") {
		alert("이메일을 입력해 주세요.");
		$('#email').focus();
		e.preventDefault();
		return;
	}
	
	if (zipcode === "" || address1 === "" || address2 === "") {
		alert("주소를 입력해 주세요.");
		$('#address1').focus();
		e.preventDefault();
		return;
	}

	if (regionId === "") {
		alert("지역을 선택해 주세요.");
		$('#regionId').focus();
		e.preventDefault();
		return;
	}

	if($("#file_preview_1").children().length < 1){
		if ($('#file1')[0].files.length < 1) {
			alert("사업자등록증을 업로드 해주세요.");
	    	return false;
	    }
    	alert("사업자등록증을 업로드 해주세요.");
        $('#file1').focus();
        e.preventDefault();
        return;
    }
    if($("#file_preview_2").children().length < 1){
    	if ($('#file2')[0].files.length < 1) {
    		alert("소개이미지를 업로드 해주세요.");
	    	return false;
	    }
    	alert("소개이미지를 업로드 해주세요.");
        $('#file2').focus();
        e.preventDefault();
        return;
    }
	
	if(isSummernoteContentEmpty(descriptionHtml)){
		alert("회사 소개문구를 작성해주세요");
		$('#descriptionHtml').focus();
		e.preventDefault();
		return false;
	}
});

function isSummernoteContentEmpty(html) {
    const hasImage = /<img\b[^>]*>/i.test(html); // img 태그 하나라도 존재하면 true

    // img 태그 제외한 모든 태그 제거 → 텍스트만 추출
    const text = html
        .replace(/<(?!img\b)[^>]*>/gi, '') // img 외 모든 태그 제거
        .replace(/&nbsp;/gi, '')           // &nbsp; 제거
        .replace(/\u200B/g, '')            // zero-width space 제거
        .trim();

    return !hasImage && text === '';
}
</script>	
<script src="<c:url value='/resources/static/js/company.js' />"></script>
<script src="<c:url value='/resources/static/js/jquery-ui.min.js' />"></script>
<script src="<c:url value='/resources/static/plugin/editor/bootstrap.min.js' />"></script>
<script src="<c:url value='/resources/static/plugin/editor/summernote.min.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>