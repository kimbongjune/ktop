<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
		<div class="main_contents">
			<div class="sub_top">
				<h2>일반</h2>
			</div>

<a href="<c:url value='/admin/user/common/add' />"><div class="ab_m ab_blue"><i class="fas fa-clone"></i>생성</div></a>

<form name="search_form" method="get" action="<c:url value='/admin/user/common' />">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
<div class="gsearch_box">
	<div class="ginfo ginfo2"><i class="fas fa-layer-group"></i>Total : <span>${userList.size()}</span></div>
	<div class="gsearch">
		<select name="sit">
			<option value="user_id" <c:if test="${searchType == 'user_id'}">selected</c:if>>회원아이디</option>
			<option value="user_name" <c:if test="${searchType == 'user_name'}">selected</c:if>>성명</option>
			<option value="user_hp" <c:if test="${searchType == 'user_hp'}">selected</c:if>>휴대폰번호</option>
			<option value="user_email" <c:if test="${searchType == 'user_email'}">selected</c:if>>이메일</option>
		</select>
		<span class="input_clear_wrap"><input type="text" name="stx" class="input_form" title="검색어" value="${searchKeyword}" /><i class="fas fa-times-circle"></i></span>
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
	<c:forEach var="user" items="${userList}" varStatus="status">
		<tr>
			<td class="center">${userList.size() - status.index}</td>
			<td class="center">${user.id}</td>
			<td class="center">${user.name}</td>
			<td class="center">${user.phoneMobile}</td>
			<td class="center">${user.email}</td>
			<td class="center">
				<c:if test="${not empty user.createdAt}">
					${user.createdAt}
				</c:if>
			</td>
			<td class="center">
				<c:if test="${not empty user.deletedAt}">
					${user.deletedAt}
				</c:if>
			</td>
			<td class="center">
				<a href="<c:url value='/admin/user/common/mod/${user.id}' />"><div class="ab_m ab_redline">수정</div></a>&nbsp;
				<div class="ab_m delete_btns Fix_FormBtns" data-href="/admin/user/common/del/${user.id}">삭제</div>
			</td>
		</tr>
	</c:forEach>
	<c:if test="${empty userList}">
		<tr>
			<td colspan="8" class="center">등록된 회원이 없습니다.</td>
		</tr>
	</c:if>
	</tbody>
</table>

		</div> <!-- main_contents -->
<script>
// 삭제 버튼 클릭 이벤트
$(document).on('click', '.delete_btns', function() {
    const href = $(this).data('href');
    const userId = href.split('/').pop();
    
    if (confirm('정말로 이 회원을 삭제하시겠습니까?')) {
        axios.post(href, {
            '${_csrf.parameterName}': '${_csrf.token}'
        })
        .then(response => {
            if (response.data === 'success') {
                alert('회원이 성공적으로 삭제되었습니다.');
                location.reload();
            } else {
                alert('회원 삭제에 실패했습니다.');
            }
        })
        .catch(error => {
            console.error('Error:', error);
            alert('오류가 발생했습니다.');
        });
    }
});
</script>
<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>