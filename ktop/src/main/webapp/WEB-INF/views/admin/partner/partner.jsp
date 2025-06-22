<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>
<link rel="stylesheet" href="<c:url value='/resources/static/css/company.css' />">
		<div class="main_contents">
			<div class="sub_top">
				<h2>협력업체관리</h2>
				
			</div>



						
<div class="ghalf">

<div class="ginfo_top">
	<h2>망고건축자재</h2>
	<div class="wrap">
		<dl>
			<dt>관리회원</dt>
			<dd>${partner.userName} [${partner.id}]</dd>
		</dl>
		<dl>
			<dt>업체명</dt>
			<dd>${partner.companyDto.companyName}</dd>
		</dl>
		<dl>
			<dt>대표자명</dt>
			<dd>${partner.companyDto.ceoName}</dd>
		</dl>
		<dl>
			<dt>전화번호</dt>
			<dd>${partner.companyDto.phone}</dd>
		</dl>
		<dl>
			<dt>이메일</dt>
			<dd>${partner.companyDto.email}</dd>
		</dl>
		<dl>
			<dt>주소</dt>
			<dd>${partner.companyDto.address1} ${partner.companyDto.address2}</dd>
		</dl>
		<dl>
			<dt>홈페이지</dt>
			<dd>${partner.companyDto.homepage}</dd>
		</dl>
		<dl>
			<dt>지역</dt>
			<dd>${partner.companyDto.regionName}</dd>
		</dl>
		<dl>
			<dt>사업자등록증 사본</dt>
			<dd>
				<a class="ahref_btns cursor" href="<c:url value='/download?id=${partner.companyFileList[0].file.id}' />">
					<i class="fas fa-paperclip"></i> 
					<span class="fname">${partner.companyFileList[0].file.originalName}</span> 
					<span class="fsize">(${partner.companyFileList[0].file.fileSizeNumber}
					<span class="fpilsu">${partner.companyFileList[0].file.fileSizeUnit}</span>)</span>
				</a>
			</dd>
		</dl>
	</div>
</div>

<ul class="tabmenu01">
		<li class="on"><a href="<c:url value='/admin/partner/${partner.id}/${partner.categoryId}' />">심사</a></li>
		<li ><a href="<c:url value='/admin/partner/${partner.id}/${partner.categoryId}/product' />">등록제품</a></li>
	</ul>

<form name="admin_company_confirm" method="post" action="">

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
	            <c:if test="${partner.status == 'pending'}">checked="checked"</c:if> /> 심사 중
	    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
	    <label>
	        <input type="radio" name="status" class="status_form" value="rejected"
	            <c:if test="${partner.status == 'rejected'}">checked="checked"</c:if> /> 반려
	    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
	    <label>
	        <input type="radio" name="status" class="status_form" value="approved"
	            <c:if test="${partner.status == 'approved'}">checked="checked"</c:if> /> 승인
	    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</td>
</tr>
<tr>
	<th>반려 내용 입력</th>
	<td>
		<input type="text" id="company_ban_text" name="alarmText" class="input_form w90" value="" disabled />
	</td>
</tr>
</tbody>
</table>
 
<div class="pt20 center">
	<button type="submit" class="ab_m ab_blue"><i class="fas fa-save"></i>저장</button>
	<a href="<c:url value='/admin/partner' />"><div class="ab_m"><i class="fas fa-th-list"></i>목록</div></a>
</div>


</div>

		</div> <!-- main_contents -->
<script>
$('.status_form').on('click', function(){
	if($(this).val() == 'rejected') {
		$('#company_ban_text').prop('disabled', false);
	} else {
		$('#company_ban_text').val("");
		$('#company_ban_text').prop('disabled', true);
	}
});
</script>
<script src="<c:url value='/resources/static/js/company.js' />"></script>
<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>