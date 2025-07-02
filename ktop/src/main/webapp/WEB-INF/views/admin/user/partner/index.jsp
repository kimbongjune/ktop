<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>
		<div class="main_contents">
			<div class="sub_top">
				<h2>협력사</h2>
				
			</div>


<c:set var="status" value="${status}" />
						
<ul class="tabmenu01">
	<li class="${empty status ? 'on' : ''}"><a href="<c:url value='/admin/user/partner' />">전체</a></li>
		<li class="${status == 'pending' ? 'on' : ''}"><a href="<c:url value='/admin/user/partner?status=pending' />">심사</a></li>
		<li class="${status == 'rejected' ? 'on' : ''}"><a href="<c:url value='/admin/user/partner?status=rejected' />">반려</a></li>
		<li class="${status == 'approved' ? 'on' : ''}"><a href="<c:url value='/admin/user/partner?status=approved' />">승인</a></li>
	</ul>


<a href="<c:url value='/admin/user/partner/add' />"><div class="ab_m ab_blue"><i class="fas fa-clone"></i>생성</div></a>


<form name="search_form" method="post" action="#">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
<input type="hidden" name="gc" value="556YGDI" />
<div class="gsearch_box">
	<div class="ginfo ginfo2"><i class="fas fa-layer-group"></i>Total : <span>7</span></div>
	<div class="gsearch">
		<select name="sit">
			<option value="user_id" >회원아이디</option>
			<option value="user_name" >성명</option>
			<option value="user_hp" >휴대폰번호</option>
			<option value="user_email" >이메일</option>
		</select>
		<span class="input_clear_wrap"><input type="text" name="stx" class="input_form" title="검색어" value="" /><i class="fas fa-times-circle"></i></span>
		<input type="submit" class="ab_m ab_gray ab_h Fix_FormBtns" value="검색" />
	</div>
</div>
</form>


<table class="gtable">
<colgroup>
	<col style="width:80px;" />
		<col style="width:100px;" />
		<col style="width:10%;" />
	<col style="width:10%;" />
	<col style="width:15%;" />
	<col />
	<col style="width:8%;" />
	<col style="width:8%;" />
	<col style="width:120px;" />
</colgroup>
<thead>
<tr>
    <th>번호</th>
	    <th>타입</th>
	    <th>회원아이디</th>
	<th>성명</th>
    <th>휴대폰번호</th>
    <th>이메일</th>
    <th>가입일</th>
    <th>탈퇴일</th>
    <th>작업</th>
</tr>
</thead>
<tbody>
		<tr>
			<td class="center">7</td>
						<td class="center">승인</td>
						<td class="center">sein9432</td>
			<td class="center">송정휘</td>
			<td class="center">010-4333-9432</td>
			<td class="center">sein9432@naver.com</td>
			<td class="center">22-09-06</td>
			<td class="center"></td>
			<td class="center"><a href="<c:url value='/admin/user/partner/mod/1' />"><div class="ab_m ab_redline">수정</div></a>&nbsp;<div class="ab_m ab_h">삭제</div></td>
		</tr>
			<tr>
			<td class="center">6</td>
						<td class="center">승인</td>
						<td class="center">company_test2022</td>
			<td class="center">김기업</td>
			<td class="center">010-1234-5678</td>
			<td class="center">kiup@kim.com</td>
			<td class="center">22-08-01</td>
			<td class="center"></td>
			<td class="center"><a href="<c:url value='/admin/user/partner/mod/2' />"><div class="ab_m ab_redline">수정</div></a>&nbsp;<div class="ab_m ab_h">삭제</div></td>
		</tr>
			<tr>
			<td class="center">5</td>
						<td class="center">승인</td>
						<td class="center">company_10</td>
			<td class="center">협력회원</td>
			<td class="center"></td>
			<td class="center"></td>
			<td class="center">22-07-21</td>
			<td class="center"></td>
			<td class="center"><a href="<c:url value='/admin/user/partner/mod/3' />"><div class="ab_m ab_redline">수정</div></a>&nbsp;<div class="ab_m ab_h">삭제</div></td>
		</tr>
			<tr>
			<td class="center">4</td>
						<td class="center">승인</td>
						<td class="center">com_ora</td>
			<td class="center">심사필요회원</td>
			<td class="center">010-1234-1234</td>
			<td class="center">jinzzz12@nate.com</td>
			<td class="center">22-07-12</td>
			<td class="center"></td>
			<td class="center"><a href="<c:url value='/admin/user/partner/mod/4' />"><div class="ab_m ab_redline">수정</div></a>&nbsp;<div class="ab_m ab_h">삭제</div></td>
		</tr>
			<tr>
			<td class="center">3</td>
						<td class="center">승인</td>
						<td class="center">company_oranc</td>
			<td class="center">안나현</td>
			<td class="center">010-3322-2323</td>
			<td class="center">jinzzz12@nate.com</td>
			<td class="center">22-07-12</td>
			<td class="center"></td>
			<td class="center"><a href="<c:url value='/admin/user/partner/mod/5' />"><div class="ab_m ab_redline">수정</div></a>&nbsp;<div class="ab_m ab_h">삭제</div></td>
		</tr>
			<tr>
			<td class="center">2</td>
						<td class="center">승인</td>
						<td class="center">company_test2</td>
			<td class="center">기업회원테스트2</td>
			<td class="center"></td>
			<td class="center"></td>
			<td class="center">22-07-05</td>
			<td class="center"></td>
			<td class="center"><a href="<c:url value='/admin/user/partner/mod/6' />"><div class="ab_m ab_redline">수정</div></a>&nbsp;<div class="ab_m ab_h">삭제</div></td>
		</tr>
			<tr>
			<td class="center">1</td>
						<td class="center">승인</td>
						<td class="center">company_test</td>
			<td class="center">기업회원테스트</td>
			<td class="center"></td>
			<td class="center"></td>
			<td class="center">22-07-04</td>
			<td class="center"></td>
			<td class="center"><a href="<c:url value='/admin/user/partner/mod/7' />"><div class="ab_m ab_redline">수정</div></a>&nbsp;<div class="ab_m ab_h">삭제</div></td>
		</tr>
	</tbody>
</table>




		</div> <!-- main_contents -->
<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>