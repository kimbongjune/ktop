<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link rel="stylesheet" href="<c:url value='/resources/static/css/person.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/plugin/editor/bootstrap.min.css' />">
<link rel="stylesheet" href="<c:url value='/resources/static/plugin/editor/summernote.min.css' />">

		<section class="sub_container"> 
		<h6>서브 콘텐츠</h6> 
			<div class="sub_category_box">  
		 
									<div class="lnb">
				<div class="web_size">  
					<ul>	
												<li class="on"><a href="<c:url value='/workforce' />" >인력 POOL</a></li>
												<li class=""><a href="<c:url value='/workforce/mine' />" >인력 POOL 안내/등록</a></li>
											</ul>
				</div>
			</div>
			
		<div class="web_size">  
					<div class="sub_top">  
				<h2>인력 POOL 안내/등록</h2>
				<ul class="location">
											<li class="home"><a href="<c:url value='/' />"></a></li>
											<li><a href="<c:url value='/workforce' />" >인력</a></li>
											<li><a href="<c:url value='/workforce/mine' />" >인력 POOL 안내/등록</a></li>
														</ul>
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">인력</h3>
						
<h4>인력 POOL 등록신청 신규입력</h4>

<form name="person_form" method="post" enctype="multipart/form-data" action="#">
<input type="hidden" name="gc" value="645FAEH" />
<input type="hidden" name="do" value="update" />
<input type="hidden" name="action" value="insert" />

<table class="gtable">
<colgroup>
	<col style="width:15%;" />
	<col />
	<col style="width:15%;" />
	<col />
</colgroup>
<tbody>
<tr>
	<th><label for="person_name">이름</label> <em class="fpilsu">*</em></th>
    <td>
		<input type="text" id="person_name" name="person_name" class="input_form w100p required" title="이름" value="" />
	</td>
	<th><label for="person_tel">연락처</label> <em class="fpilsu">*</em></th>
    <td>
		<input type="tel" id="person_tel" name="person_tel" class="telnum input_form w150p hypenauto required" title="연락처" value="" />
	</td>
</tr>
<tr>
	<th><label for="person_email">이메일</label> <em class="fpilsu">*</em></th>
    <td>
		<input type="email" id="person_email" name="person_email" class="input_form w90 required" title="이메일" value="" />
	</td>
	<th><label for="person_area">활동 지역</label> <em class="fpilsu">*</em></th>
    <td>
		<select id="person_area" name="person_area" class="required" title="지역 선택">
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
<option value='15/17/' >&nbsp;&nbsp;&nbsp;&nbsp;┖전주시</option>
<option value='15/18/' >&nbsp;&nbsp;&nbsp;&nbsp;┖익산시</option>
<option value='15/19/' >&nbsp;&nbsp;&nbsp;&nbsp;┖군산시</option>
<option value='16/' >제주</option>
<option value='16/22/' >&nbsp;&nbsp;&nbsp;&nbsp;┖제주시</option>
<option value='16/23/' >&nbsp;&nbsp;&nbsp;&nbsp;┖서귀포시</option>
		</select>
	</td>
</tr>
<tr>
	<th><label for="person_bunya">활동 분야</label> <em class="fpilsu">*</em></th>
    <td colspan="3">
			<div class="person_bunya_cate_div"><label><input type="checkbox" name="person_bunya[]" class="person_bunya" title="목수" value="3/"  /> 목수</label></div>
			<div class="person_bunya_cate_div"><label><input type="checkbox" name="person_bunya[]" class="person_bunya" title="철거" value="4/"  /> 철거</label></div>
			<div class="person_bunya_cate_div"><label><input type="checkbox" name="person_bunya[]" class="person_bunya" title="설비" value="5/"  /> 설비</label></div>
			<div class="person_bunya_cate_div"><label><input type="checkbox" name="person_bunya[]" class="person_bunya" title="전기" value="6/"  /> 전기</label></div>
			<div class="person_bunya_cate_div"><label><input type="checkbox" name="person_bunya[]" class="person_bunya" title="도장" value="7/"  /> 도장</label></div>
			<div class="person_bunya_cate_div"><label><input type="checkbox" name="person_bunya[]" class="person_bunya" title="미장" value="8/"  /> 미장</label></div>
			<div class="person_bunya_cate_div"><label><input type="checkbox" name="person_bunya[]" class="person_bunya" title="조적" value="9/"  /> 조적</label></div>
			<div class="person_bunya_cate_div"><label><input type="checkbox" name="person_bunya[]" class="person_bunya" title="도배" value="10/"  /> 도배</label></div>
			<div class="person_bunya_cate_div"><label><input type="checkbox" name="person_bunya[]" class="person_bunya" title="장판" value="11/"  /> 장판</label></div>
			<div class="person_bunya_cate_div"><label><input type="checkbox" name="person_bunya[]" class="person_bunya" title="타일" value="12/"  /> 타일</label></div>
			<div class="person_bunya_cate_div"><label><input type="checkbox" name="person_bunya[]" class="person_bunya" title="필름" value="13/"  /> 필름</label></div>
		</td>
</tr>
<tr>
	<th>대표이미지</th>
    <td colspan="3">

<div class="file_box">
	<div class="file_preview" id="file_preview_1">
			</div>
	<label for="gc_file_1"><div class="file_btn" title="파일첨부">첨부</div><input type="file" id="gc_file_1" name="gc_file[1]" class="up_files"  data-target="file_preview_1" data-checkid="gc_file_del_1" accept="image/*" /></label>
	</div></td>
</tr>
<tr>
	<th>포트폴리오</th>
    <td colspan="3">

<div class="file_box">
	<div class="file_preview" id="file_preview_2">
			</div>
	<label for="gc_file_2"><div class="file_btn" title="파일첨부">첨부</div><input type="file" id="gc_file_2" name="gc_file[2]" class="up_files"  data-target="file_preview_2" data-checkid="gc_file_del_2"  /></label>
	</div></td>
</tr>
<tr>
	<th>소개</th>
    <td colspan="3">
		<textarea id="person_content" name="person_content" class="textarea_form h100p required summernote" title="소개" data-table="sys_person_list" data-target=""></textarea>
	</td>
</tr>
</tbody>
</table> 
<div class="pt20 center">
	<button type="submit" class="ab_m ab_blue"><i class="fas fa-save"></i>저장</button>
	<a href="http://localhost:3000/main/?gc=645FAEH"><div class="ab_m"><i class="fas fa-undo"></i>뒤로</div></a>
</div>

</form>

	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script src="<c:url value='/resources/static/js/person.js' />"></script>
<script src="<c:url value='/resources/static/plugin/editor/bootstrap.min.js' />"></script>
<script src="<c:url value='/resources/static/plugin/editor/summernote.min.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>