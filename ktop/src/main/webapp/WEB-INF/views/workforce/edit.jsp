<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
<form name="person_form" method="post" enctype="multipart/form-data" action="">

<table class="gtable">
<colgroup>
	<col style="width:15%;" />
	<col />
	<col style="width:15%;" />
	<col />
</colgroup>
<tbody>
<tr>
	<th><label for="name">이름</label> <em class="fpilsu">*</em></th>
    <td>
		<input type="text" id="name" name="name" class="input_form w100p" title="이름" value="${worker.name}" />
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
				<option ${worker.regionId eq region.id ? "selected" : ""} value='${region.id}' >${region.name}</option>
				<c:forEach var="child" items="${region.children}">
					<option ${worker.regionId eq child.id ? "selected" : ""} value='${child.id}' >&nbsp;&nbsp;&nbsp;&nbsp;┖${child.name}</option>
				</c:forEach>
			</c:forEach>
		</select>
	</td>
</tr>
<tr>
	<th><label for="person_bunya">활동 분야</label> <em class="fpilsu">*</em></th>
    <td colspan="3">
		<c:forEach var="workField" items="${workFieldList}">
		    <c:set var="checked" value="false" />
		    
		    <c:forEach var="field" items="${worker.fieldList}">
		        <c:if test="${field.fieldId == workField.id}">
		            <c:set var="checked" value="true" />
		        </c:if>
		    </c:forEach>
		    
		    <div class="person_bunya_cate_div">
		        <label>
		            <input type="checkbox"
		                   name="workField"
		                   class="person_bunya"
		                   title="${workField.name}"
		                   value="${workField.id}"
		                   <c:if test="${checked}">checked</c:if>
		            />
		            ${workField.name}
		        </label>
		    </div>
		</c:forEach>
	</td>
</tr>
<tr>
	<th>대표이미지</th>
    <td colspan="3">

<div class="file_box">
	<div class="file_preview" id="file_preview_1">
		<c:choose>
			<c:when test="${fn:contains(worker.workerFileList[0].file.mimeType, 'image')}">
				<img src="<c:url value='${worker.workerFileList[0].file.filePath}' />" alt="${worker.workerFileList[0].file.originalName}" />
			</c:when>
			<c:otherwise>
				<i class="fas fa-save fa-3x"></i>
			</c:otherwise>
		</c:choose>		
	</div>
	<label for="file1"><div class="file_btn" title="파일첨부">첨부</div><input type="file" id="file1" name="file1" class="up_files"  data-target="file_preview_1" data-checkid="gc_file_del_1" accept="image/*" /></label>
	<div class="file_btn ab_red cursor del_files" data-previewid="file_preview_1" data-checkid="gc_file_del_1" title="파일삭제">삭제</div>
	<input type="hidden" name="delFile1" value="${worker.workerFileList[0].id}"/>
	</div></td>
</tr>
<tr>
	<th>포트폴리오</th>
    <td colspan="3">

<div class="file_box">
	<div class="file_preview" id="file_preview_2">
		<c:choose>
			<c:when test="${fn:contains(worker.workerFileList[1].file.mimeType, 'image')}">
				<img src="<c:url value='${worker.workerFileList[1].file.filePath}' />" alt="${worker.workerFileList[1].file.originalName}" />
			</c:when>
			<c:otherwise>
				<i class="fas fa-save fa-3x"></i>
			</c:otherwise>
		</c:choose>		
	</div>
	<label for="file2"><div class="file_btn" title="파일첨부">첨부</div><input type="file" id="file2" name="file2" class="up_files"  data-target="file_preview_2" data-checkid="gc_file_del_2"  /></label>
	<div class="file_btn ab_red cursor del_files" data-previewid="file_preview_2" data-checkid="gc_file_del_2" title="파일삭제">삭제</div>
	<input type="hidden" name="delFile2" value="${worker.workerFileList[1].id}"/>
	</div></td>
</tr>
<tr>
	<th>소개</th>
    <td colspan="3">
		<textarea id="introduction" name="introduction" class="textarea_form h100p required summernote" title="소개" data-table="sys_person_list" data-target="">${worker.introduction}</textarea>
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
<script>
	$('form[name="person_form"]').on('submit', function(e) {
		console.log("??")
		const regionId = $('#regionId').val().trim();
		const name = $("#name").val().trim();
		const introductionHtml = $('#introduction').summernote('code');
		
		if (name === "") {
			alert("이름을 입력해 주세요.");
			$('#name').focus();
			e.preventDefault();
			return false;
		}
		
		if (regionId === "") {
			alert("지역을 선택해 주세요.");
			$('#regionId').focus();
			e.preventDefault();
			return false;
		}
		
		const isWorkFieldChecked = $('input[name="workField"]:checked').length > 0;
		if (!isWorkFieldChecked) {
			alert("활동 분야를 한 개 이상 선택해 주세요.");
			e.preventDefault();
			return false;
		}

		if($("#file_preview_1").children().length < 1){
	    	if ($('#file1')[0].files.length < 1) {
	    		alert("대표이미지를 업로드 해주세요.");
		    	return false;
		    }
	    	alert("대표이미지를 업로드 해주세요.");
	        $('#file1').focus();
	        e.preventDefault();
	        return;
	    }
	    if($("#file_preview_2").children().length < 1){
	    	if ($('#file2')[0].files.length < 1) {
	    		alert("포트폴리오를 업로드 해주세요.");
	    		return false;
		    }
	    	alert("포트폴리오를 업로드 해주세요.");
	        $('#file2').focus();
	        e.preventDefault();
	        return;
	    }
		
		if(isSummernoteContentEmpty(introductionHtml)){
			alert("인력풀 소개문구를 작성해주세요");
			$('#introduction').focus();
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
<script src="<c:url value='/resources/static/js/person.js' />"></script>
<script src="<c:url value='/resources/static/plugin/editor/bootstrap.min.js' />"></script>
<script src="<c:url value='/resources/static/plugin/editor/summernote.min.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>