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
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">인력</h3>
						
<h4>인력 POOL 등록신청 신규입력</h4>

<form name="person_form" method="post" enctype="multipart/form-data" action="#">

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
		<div><sec:authentication property="principal.name" /></div>
	</td>
	<th><label for="person_tel">연락처</label> <em class="fpilsu">*</em></th>
    <td>
		<div><sec:authentication property="principal.phone" /></div>
	</td>
</tr>
<tr>
	<th><label for="person_email">이메일</label> <em class="fpilsu">*</em></th>
    <td>
		<div><sec:authentication property="principal.email" /></div>
	</td>
	<th><label for="person_area">활동 지역</label> <em class="fpilsu">*</em></th>
    <td>
		<select id="regionId" name="regionId" class="" title="지역 선택">
			<option value="">:선택:</option>
			<c:forEach var="region" items="${regionList}">
				<option value='${region.id}'>${region.name}</option>
				<c:forEach var="child" items="${region.children}">
					<option value='${child.id}'>&nbsp;&nbsp;&nbsp;&nbsp;┖${child.name}</option>
				</c:forEach>
			</c:forEach>
		</select>
	</td>
</tr>
<tr>
	<th><label for="person_bunya">활동 분야</label> <em class="fpilsu">*</em></th>
    <td colspan="3">
    	<c:forEach var="workField" items="${workFieldList}">
    		<div class="person_bunya_cate_div"><label><input type="checkbox" name="workField" class="person_bunya" title="${workField.name}" value="${workField.id}"  />${workField.name}</label></div>
    	</c:forEach>
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
	<a href="#"><div class="ab_m"><i class="fas fa-undo"></i>뒤로</div></a>
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