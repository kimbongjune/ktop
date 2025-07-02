<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>
		<div class="main_contents">
			<div class="sub_top">
				<h2>일반</h2>
			</div>



						


<a href="<c:url value='/admin/user/common/add' />"><div class="ab_m ab_blue"><i class="fas fa-clone"></i>생성</div></a>


<form name="search_form" method="post" action="#">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
<input type="hidden" name="gc" value="423HMCC" />
<div class="gsearch_box">
	<div class="ginfo ginfo2"><i class="fas fa-layer-group"></i>Total : <span>5</span></div>
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
			<td class="center">5</td>
						<td class="center">qqqqqq</td>
			<td class="center">qqqqqq</td>
			<td class="center">000-0000-0000</td>
			<td class="center">000@0000.com</td>
			<td class="center">24-12-17</td>
			<td class="center"></td>
			<td class="center"><a href="<c:url value='/admin/user/common/mod/1' />"><div class="ab_m ab_redline">수정</div></a>&nbsp;<div class="ab_m delete_btns Fix_FormBtns" data-href="/admin/user/common/del/1">삭제</div></td>
		</tr>
			<tr>
			<td class="center">4</td>
						<td class="center">sonoran</td>
			<td class="center">유반장</td>
			<td class="center">010-0202-0202</td>
			<td class="center">sonoran@nate.com</td>
			<td class="center">22-08-11</td>
			<td class="center"></td>
			<td class="center"><a href="/admin/user/common/mod/2"><div class="ab_m ab_redline">수정</div></a>&nbsp;<div class="ab_m ab_h">삭제</div></td>
		</tr>
			<tr>
			<td class="center">3</td>
						<td class="center">nononono</td>
			<td class="center">멋쟁이목수팀</td>
			<td class="center">010-2594-0104</td>
			<td class="center">sonoran@nate.com</td>
			<td class="center">22-08-08</td>
			<td class="center"></td>
			<td class="center"><a href="/admin/user/common/mod/3"><div class="ab_m ab_redline">수정</div></a>&nbsp;<div class="ab_m ab_h">삭제</div></td>
		</tr>
			<tr>
			<td class="center">2</td>
						<td class="center">nmember</td>
			<td class="center">홍길동</td>
			<td class="center">010-0000-9999</td>
			<td class="center">jinzzz123@naver.com</td>
			<td class="center">22-08-04</td>
			<td class="center"></td>
			<td class="center"><a href="/admin/user/common/mod/4"><div class="ab_m ab_redline">수정</div></a>&nbsp;<div class="ab_m ab_h">삭제</div></td>
		</tr>
			<tr>
			<td class="center">1</td>
						<td class="center">normalmember</td>
			<td class="center">일반회원</td>
			<td class="center">010-1234-1234</td>
			<td class="center">jinzzz12@nate.com</td>
			<td class="center">22-08-03</td>
			<td class="center"></td>
			<td class="center"><a href="/admin/user/common/mod/5"><div class="ab_m ab_redline">수정</div></a>&nbsp;<div class="ab_m ab_h">삭제</div></td>
		</tr>
	</tbody>
</table>




		</div> <!-- main_contents -->
<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>