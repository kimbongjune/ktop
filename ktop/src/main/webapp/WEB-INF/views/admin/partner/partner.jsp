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
			<dd>기업회원테스트2 [company_test2]</dd>
		</dl>
		<dl>
			<dt>사용 여부</dt>
			<dd>예</dd>
		</dl>
		<dl>
			<dt>업체명</dt>
			<dd>망고건축자재</dd>
		</dl>
		<dl>
			<dt>대표자명</dt>
			<dd>김망고</dd>
		</dl>
		<dl>
			<dt>전화번호</dt>
			<dd>02-1234-5678</dd>
		</dl>
		<dl>
			<dt>이메일</dt>
			<dd>mango@kim.com</dd>
		</dl>
		<dl>
			<dt>주소</dt>
			<dd>[05232] 서울 영등포구 여의도길 12 4</dd>
		</dl>
		<dl>
			<dt>홈페이지</dt>
			<dd></dd>
		</dl>
		<dl>
			<dt>지역</dt>
			<dd>서울 </dd>
		</dl>
		<dl>
			<dt>사업자등록증 사본</dt>
			<dd></dd>
		</dl>
	</div>
</div>

<ul class="tabmenu01">
		<li class="on"><a href="<c:url value='/admin/partner/1' />">심사</a></li>
		<li ><a href="<c:url value='/admin/partner/1/product' />">등록제품</a></li>
	</ul>

<form name="admin_company_confirm" method="post" enctype="multipart/form-data" action="#">
<input type="hidden" name="gc" value="558FACF" />
<input type="hidden" name="company_id" value="2" />
<input type="hidden" name="do" value="update" />
<input type="hidden" name="action" value="confirm" />

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
			<label><input type="radio" name="company_confirm" class="company_confirm" value="1"  /> 심사 중</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<label><input type="radio" name="company_confirm" class="company_confirm" value="2"  /> 반려</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<label><input type="radio" name="company_confirm" class="company_confirm" value="3"  checked="checked" /> 승인</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</td>
</tr>
<tr>
	<th>반려 내용 입력</th>
	<td>
		<input type="text" id="company_ban_text" name="company_ban_text" class="input_form w90" value="" disabled />
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
<script src="<c:url value='/resources/static/js/company.js' />"></script>
<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>