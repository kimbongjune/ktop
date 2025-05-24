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
			<dd>일반회원 [normalmember]</dd>
		</dl>
		<dl>
			<dt>사용 여부</dt>
			<dd>예</dd>
		</dl>
		<dl>
			<dt>이름</dt>
			<dd>asdf</dd>
		</dl>
		<dl>
			<dt>연락처</dt>
			<dd>010-1234-1234</dd>
		</dl>
		<dl>
			<dt>이메일</dt>
			<dd>1234@1234.dom</dd>
		</dl>
		<dl>
			<dt>활동 지역</dt>
			<dd>전북 전주시</dd>
		</dl>
		<dl>
			<dt>활동 분야</dt>
			<dd>목수, 철거, 미장, 조적</dd>
		</dl>
		<dl>
			<dt>대표이미지</dt>
			<dd><div class="ahref_btns cursor" data-href="#"><i class="fas fa-paperclip"></i> <span class="fname">test01.jpg</span> <span class="fsize">(10.8 <span class="fpilsu">KB</span>)</span></div>
</dd>
		</dl>
		<dl>
			<dt>포트폴리오</dt>
			<dd><div class="ahref_btns cursor" data-href="#"><i class="fas fa-paperclip"></i> <span class="fname">쉐어라이프_직인.jpg</span> <span class="fsize">(56.7 <span class="fpilsu">KB</span>)</span></div>
</dd>
		</dl>
	</div>
</div>


	<form name="admin_person_confirm" method="post" enctype="multipart/form-data" action="#">
	<input type="hidden" name="gc" value="610MFEF" />
<input type="hidden" name="person_id" value="2" />
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
					<label><input type="radio" name="person_confirm" class="person_confirm" value="1"  /> 심사 중</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label><input type="radio" name="person_confirm" class="person_confirm" value="2"  /> 반려</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label><input type="radio" name="person_confirm" class="person_confirm" value="3"  checked="checked" /> 승인</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</td>
	</tr>
	<tr>
		<th>반려 내용 입력</th>
		<td>
			<input type="text" id="person_ban_text" name="person_ban_text" class="input_form w90" value="" disabled />
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
<script src="<c:url value='/resources/static/js/person.js' />"></script>
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>