<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
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
												<li class=""><a href="<c:url value='/user/product' />" >상품관리</a></li>
												<li class="on"><a href="<c:url value='/user/company' />" >업체정보관리</a></li>
											</ul>
				</div>
			</div>
			
		<div class="web_size">  
					<div class="sub_top">  
				<h2>업체정보관리</h2>
				<ul class="location">
											<li class="home"><a href="<c:url value='/' />"></a></li>
											<li><a href="<c:url value='/user/mypage' />" >MYPAGE</a></li>
											<li class=""><a href="<c:url value='/user/company' />" >업체정보관리</a></li>
														</ul>
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
		<input type="text" id="companyName" name="companyName" class="input_form w90" title="업체명" value="" />
	</td>
	<th><label for="ceoName">대표자명</label> <em class="fpilsu">*</em></th>
    <td>
		<input type="text" id="ceoName" name="ceoName" class="input_form w90" title="대표자명" value="" />
	</td>
</tr>
<tr>
	<th><label for="phone">전화번호</label> <em class="fpilsu">*</em></th>
    <td>
		<input type="tel" id="phone" name="phone" class="telnum input_form w150p hypenauto" title="전화번호" value="" />
	</td>
	<th><label for="email">이메일</label> <em class="fpilsu">*</em></th>
    <td>
		<input type="text" id="email" name="email" class="input_form w90" title="이메일" value="" />
	</td>
</tr>
<tr>
	<th><label for="company_zip">주소</label></th>
    <td colspan="3">
		<input type="text" id="zipcode" name="zipcode" class="input_form numeric w70p" readonly minlength="5" maxlength="5" title="우편번호" data-zip="company_zip" data-addr1="company_addr1" data-addr2="company_addr2" value="" />&nbsp;
		<div class="ab_m zip_search_btns" data-zip="zipcode" data-addr1="address1" data-addr2="address2">우편번호검색</div>
		<input type="text" id="address1" name="address1" class="input_form w90 mt5" title="주소" value="" /><br />
		<input type="text" id="address2" name="address2" class="input_form w300p mt5" title="상세주소" value="" /> <label for="address2">상세주소 입력</label>
	</td>
</tr>
<tr>
	<th><label for="homepage">홈페이지</label></th>
    <td>
		<input type="text" id="homepage" name="homepage" class="input_form w90" title="홈페이지" value="" />
	</td>
	<th><label for="company_area">지역 선택</label> <em class="fpilsu">*</em></th>
	<td>
		<select id="regionId" name="regionId" class="" title="지역 선택">
			<option value="">:선택:</option>
			<c:forEach var="region" items="${regionList}">
				<option value='${region.id}' >${region.name}</option>
				<c:forEach var="child" items="${region.children}">
					<option value='${child.id}' >&nbsp;&nbsp;&nbsp;&nbsp;┖${child.name}</option>
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
						</div>
	<label for="file1"><div class="file_btn" title="파일첨부">첨부</div><input type="file" id="file1" name="file1" class="up_files"  data-target="file_preview_1" data-checkid="gc_file_del_1"  /></label>
	</div></td>
</tr>
<tr>
	<th>소개 이미지</th>
    <td colspan="3">

<div class="file_box">
	<div class="file_preview" id="file_preview_2">
									<%-- <img src="<c:url value='/resources/static/image/1662429127_5c740f43f33d20e391fa9acb90bef4142bef7328.jpg' />" class="popimg_btns cursor" data-href="<c:url value='/resources/static/image/1662429127_5c740f43f33d20e391fa9acb90bef4142bef7328.jpg' />" alt="클릭시 큰 이미지" /> --%>
						</div>
	<label for="file2"><div class="file_btn" title="파일첨부">첨부</div><input type="file" id="file2" name="file2" class="up_files"  data-target="file_preview_2" data-checkid="gc_file_del_2" accept="image/*" /></label>
		<!-- <div class="file_btn ab_red cursor del_files" data-previewid="file_preview_2" data-checkid="gc_file_del_2" title="파일삭제">삭제</div> -->
	</div></td>
</tr>
<tr>
	<th>협력사 소개</th>
    <td colspan="3">
		<textarea id="descriptionHtml" name="descriptionHtml" class="textarea_form h100p summernote" title="협력사 소개" data-table="sys_company_list" data-target="7"></textarea>
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
	$('form[name="company_form"]').on('submit', function (e) {
	    const companyName = $('#companyName').val().trim();
	    const ceoName = $('#ceoName').val().trim();
	    const phone = $('#phone').val().trim();
	    const email = $('#email').val().trim();
	    const regionId = $('#regionId').val();
	
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
	
	    if (regionId === "") {
	        alert("지역을 선택해 주세요.");
	        $('#regionId').focus();
	        e.preventDefault();
	        return;
	    }
	});
</script>
<script src="<c:url value='/resources/static/js/company.js' />"></script>
<script src="<c:url value='/resources/static/js/jquery-ui.min.js' />"></script>
<script src="<c:url value='/resources/static/plugin/editor/bootstrap.min.js' />"></script>
<script src="<c:url value='/resources/static/plugin/editor/summernote.min.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>