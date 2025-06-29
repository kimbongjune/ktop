<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
<link rel="stylesheet" href="<c:url value='/resources/static/css/person.css' />">
		<div class="main_contents">
			<div class="sub_top">
				<h2>인력풀 관리</h2>
			</div>



						
<div class="ghalf">

<div class="ginfo_top">
	<h2>asdf</h2>
	<div class="wrap">
		<dl>
			<dt>관리회원</dt>
			<dd>${worker.user.name} [${worker.userId}]</dd>
		</dl>
		<dl>
			<dt>이름</dt>
			<dd>${worker.name}</dd>
		</dl>
		<dl>
			<dt>연락처</dt>
			<dd>${worker.user.phoneMobile}</dd>
		</dl>
		<dl>
			<dt>이메일</dt>
			<dd>${worker.user.email}</dd>
		</dl>
		<dl>
			<dt>활동 지역</dt>
			<dd>${worker.regionName}</dd>
		</dl>
		<dl>
			<dt>활동 분야</dt>
			<dd>
				<c:forEach var="field" items="${worker.fieldList}" varStatus="status">
                    ${field.fieldName}<c:if test="${!status.last}">, </c:if>
                </c:forEach>
			</dd>
		</dl>
		<dl>
			<dt>대표이미지</dt>
			<dd>
				<a class="ahref_btns cursor" href="<c:url value='/file/download?id=${worker.workerFileList[0].file.id}' />">
					<i class="fas fa-paperclip"></i> 
					<span class="fname">${worker.workerFileList[0].file.originalName}</span> 
					<span class="fsize">(${worker.workerFileList[0].file.fileSizeNumber}
					<span class="fpilsu">${worker.workerFileList[0].file.fileSizeUnit}</span>)</span>
				</a>
			</dd>
		</dl>
		<dl>
			<dt>포트폴리오</dt>
			<dd>
				<a class="ahref_btns cursor" href="<c:url value='/file/download?id=${worker.workerFileList[1].file.id}' />">
					<i class="fas fa-paperclip"></i> 
					<span class="fname">${worker.workerFileList[1].file.originalName}</span> 
					<span class="fsize">(${worker.workerFileList[1].file.fileSizeNumber}
					<span class="fpilsu">${worker.workerFileList[1].file.fileSizeUnit}</span>)</span>
				</a>
			</dd>
		</dl>
	</div>
</div>


	<form name="admin_person_confirm" method="post" >

	<h4>업체 신청내역 심사</h4>
	<table class="gtable">
	<colgroup>
		<col style="width:15%;" />
		<col />
	</colgroup>
	<tbody>
	<tr>
		<th>심사현황</th>
		<td>
			<label>
		        <input type="radio" name="status" class="status_form" value="pending"
		            <c:if test="${worker.status == 'pending'}">checked="checked"</c:if> /> 심사 중
		    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		    <label>
		        <input type="radio" name="status" class="status_form" value="rejected"
		            <c:if test="${worker.status == 'rejected'}">checked="checked"</c:if> /> 반려
		    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		    <label>
		        <input type="radio" name="status" class="status_form" value="approved"
		            <c:if test="${worker.status == 'approved'}">checked="checked"</c:if> /> 승인
		    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</td>
	</tr>
	<tr>
		<th>반려 내용 입력</th>
		<td>
			<input type="text" id="person_ban_text" name="alarmText" class="input_form w90" value="" disabled />
		</td>
	</tr>
	</tbody>
	</table>
	 
	<div class="pt20 center">
		<button type="submit" class="ab_m ab_blue"><i class="fas fa-save"></i>저장</button>
		<a href="<c:url value='/admin/workforce' />"><div class="ab_m"><i class="fas fa-th-list"></i>목록</div></a>
	</div>


</div>

		</div> <!-- main_contents -->
<script>
$('.status_form').on('click', function(){
	if($(this).val() == 'rejected') {
		$('#person_ban_text').prop('disabled', false);
	} else {
		$('#person_ban_text').val("");
		$('#person_ban_text').prop('disabled', true);
	}
});
</script>
<script src="<c:url value='/resources/static/js/person.js' />"></script>
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>