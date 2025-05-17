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
												<li class="on"><a href="<c:url value='/user/mypage' />" >회원정보관리</a></li>
												<li class=""><a href="<c:url value='/user/product' />" >상품관리</a></li>
												<li class=""><a href="<c:url value='/user/company' />" >업체정보관리</a></li>
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

<form name="company_form" method="post" enctype="multipart/form-data" action="#">
<input type="hidden" name="gc" value="598CDTE" />
<input type="hidden" name="company_id" value="7" />
<input type="hidden" name="do" value="update" />
<input type="hidden" name="action" value="update" />


<table class="gtable">
<colgroup>
	<col style="width:15%;" />
	<col />
	<col style="width:15%;" />
	<col />
</colgroup>
<tbody>
<tr>
	<th><label for="company_title">업체명</label> <em class="fpilsu">*</em></th>
    <td>
		<input type="text" id="company_title" name="company_title" class="input_form w90 required" title="업체명" value="세인디자인건축" />
	</td>
	<th><label for="company_ceo">대표자명</label> <em class="fpilsu">*</em></th>
    <td>
		<input type="text" id="company_ceo" name="company_ceo" class="input_form w90 required" title="대표자명" value="송정휘" />
	</td>
</tr>
<tr>
	<th><label for="company_tel">전화번호</label> <em class="fpilsu">*</em></th>
    <td>
		<input type="tel" id="company_tel" name="company_tel" class="telnum input_form w150p hypenauto required" title="전화번호" value="063-241-9432" />
	</td>
	<th><label for="company_email">이메일</label> <em class="fpilsu">*</em></th>
    <td>
		<input type="text" id="company_email" name="company_email" class="input_form w90 required" title="이메일" value="sein9432@naver.com" />
	</td>
</tr>
<tr>
	<th><label for="company_zip">주소</label></th>
    <td colspan="3">
		<input type="text" id="company_zip" name="company_zip" class="input_form numeric w70p" readonly minlength="5" maxlength="5" title="우편번호" data-zip="company_zip" data-addr1="company_addr1" data-addr2="company_addr2" value="123456" />&nbsp;
		<div class="ab_m zip_search_btns" data-zip="company_zip" data-addr1="company_addr1" data-addr2="company_addr2">우편번호검색</div>
		<input type="text" id="company_addr1" name="company_addr1" class="input_form w90 mt5" title="주소" value="전북 전주시" /><br />
		<input type="text" id="company_addr2" name="company_addr2" class="input_form w300p mt5" title="상세주소" value="" /> <label for="company_addr2">상세주소 입력</label>
	</td>
</tr>
<tr>
	<th><label for="company_homepage">홈페이지</label></th>
    <td>
		<input type="text" id="company_homepage" name="company_homepage" class="input_form w90" title="홈페이지" value="" />
	</td>
	<th><label for="company_area">지역 선택</label> <em class="fpilsu">*</em></th>
	<td>
		<select id="company_area" name="company_area" class="required" title="지역 선택">
			<option value="">:선택:</option>
			<option value='1/' >서울</option>
<option value='2/' >부산</option>
<option value='3/' >인천</option>
<option value='4/' >대구</option>
<option value='5/' >광주</option>
<option value='6/' >대전</option>
<option value='7/' >울산</option>
<option value='8/' >경기</option>
<option value='8/34/' >&nbsp;&nbsp;&nbsp;&nbsp;┖수원시</option>
<option value='8/35/' >&nbsp;&nbsp;&nbsp;&nbsp;┖안양시</option>
<option value='9/' >강원</option>
<option value='9/32/' >&nbsp;&nbsp;&nbsp;&nbsp;┖춘천시</option>
<option value='9/33/' >&nbsp;&nbsp;&nbsp;&nbsp;┖원주시</option>
<option value='10/' >충남</option>
<option value='10/30/' >&nbsp;&nbsp;&nbsp;&nbsp;┖천안시</option>
<option value='10/31/' >&nbsp;&nbsp;&nbsp;&nbsp;┖공주시</option>
<option value='11/' >충북</option>
<option value='11/28/' >&nbsp;&nbsp;&nbsp;&nbsp;┖청주시</option>
<option value='11/29/' >&nbsp;&nbsp;&nbsp;&nbsp;┖충주시</option>
<option value='12/' >경남</option>
<option value='12/26/' >&nbsp;&nbsp;&nbsp;&nbsp;┖창원시</option>
<option value='12/27/' >&nbsp;&nbsp;&nbsp;&nbsp;┖진주시</option>
<option value='13/' >경북</option>
<option value='13/24/' >&nbsp;&nbsp;&nbsp;&nbsp;┖안동시</option>
<option value='13/25/' >&nbsp;&nbsp;&nbsp;&nbsp;┖구미시</option>
<option value='14/' >전남</option>
<option value='14/20/' >&nbsp;&nbsp;&nbsp;&nbsp;┖여수시</option>
<option value='14/21/' >&nbsp;&nbsp;&nbsp;&nbsp;┖목포시</option>
<option value='15/' >전북</option>
<option value='15/17/' selected>&nbsp;&nbsp;&nbsp;&nbsp;┖전주시</option>
<option value='15/18/' >&nbsp;&nbsp;&nbsp;&nbsp;┖익산시</option>
<option value='15/19/' >&nbsp;&nbsp;&nbsp;&nbsp;┖군산시</option>
<option value='16/' >제주</option>
<option value='16/22/' >&nbsp;&nbsp;&nbsp;&nbsp;┖제주시</option>
<option value='16/23/' >&nbsp;&nbsp;&nbsp;&nbsp;┖서귀포시</option>
		</select>
	</td>
</tr>
<tr>
	<th>사업자등록증 사본</th>
    <td colspan="3">

<div class="file_box">
	<div class="file_preview" id="file_preview_1">
									<img src="<c:url value='/resources/static/image/1662429127_0ab222632b8859295eec4f5bb802698a0c17bfb0.jpg' />" class="popimg_btns cursor" data-href="<c:url value='/resources/static/image/1662429127_0ab222632b8859295eec4f5bb802698a0c17bfb0.jpg' />" alt="클릭시 큰 이미지" />
						</div>
	<label for="gc_file_1"><div class="file_btn" title="파일첨부">첨부</div><input type="file" id="gc_file_1" name="gc_file[1]" class="up_files"  data-target="file_preview_1" data-checkid="gc_file_del_1"  /></label>
		<div class="file_btn ab_red cursor del_files" data-previewid="file_preview_1" data-checkid="gc_file_del_1" title="파일삭제">삭제</div>
	<input type="hidden" id="gc_file_del_1" name="gc_file_del[1]" value="" />
	</div></td>
</tr>
<tr>
	<th>소개 이미지</th>
    <td colspan="3">

<div class="file_box">
	<div class="file_preview" id="file_preview_2">
									<img src="<c:url value='/resources/static/image/1662429127_5c740f43f33d20e391fa9acb90bef4142bef7328.jpg' />" class="popimg_btns cursor" data-href="<c:url value='/resources/static/image/1662429127_5c740f43f33d20e391fa9acb90bef4142bef7328.jpg' />" alt="클릭시 큰 이미지" />
						</div>
	<label for="gc_file_2"><div class="file_btn" title="파일첨부">첨부</div><input type="file" id="gc_file_2" name="gc_file[2]" class="up_files"  data-target="file_preview_2" data-checkid="gc_file_del_2" accept="image/*" /></label>
		<div class="file_btn ab_red cursor del_files" data-previewid="file_preview_2" data-checkid="gc_file_del_2" title="파일삭제">삭제</div>
	<input type="hidden" id="gc_file_del_2" name="gc_file_del[2]" value="" />
	</div></td>
</tr>
<tr>
	<th>협력사 소개</th>
    <td colspan="3">
		<textarea id="company_content" name="company_content" class="textarea_form h100p required summernote" title="협력사 소개" data-table="sys_company_list" data-target="7"><p><img alt="editor_image" src="<c:url value='/resources/static/image/1662429115_842881968d42aa81f4683633aebae53d23ed8b7f.jpg' />" style=""><br></p><p><br></p><p><img alt="editor_image" src="<c:url value='/resources/static/image/1662429115_842881968d42aa81f4683633aebae53d23ed8b7f.jpg' />" style=""><br></p></textarea>
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
<script src="<c:url value='/resources/static/js/company.js' />"></script>
<script src="<c:url value='/resources/static/js/jquery-ui.min.js' />"></script>
<script src="<c:url value='/resources/static/plugin/editor/bootstrap.min.js' />"></script>
<script src="<c:url value='/resources/static/plugin/editor/summernote.min.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>