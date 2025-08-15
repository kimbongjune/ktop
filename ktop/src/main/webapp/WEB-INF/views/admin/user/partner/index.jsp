<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
		<div class="main_contents">
			<div class="sub_top">
				<h2>협력사</h2>
			</div>

<a href="<c:url value='/admin/user/partner/add' />"><div class="ab_m ab_blue"><i class="fas fa-clone"></i>생성</div></a>

<form name="search_form" method="get" action="<c:url value='/admin/user/partner' />">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
<div class="gsearch_box">
	<div class="ginfo ginfo2"><i class="fas fa-layer-group"></i>Total : <span>${partnerList.size()}</span></div>
	<div class="gsearch">
		<select name="sit">
			<option value="id" <c:if test="${searchType == 'id'}">selected</c:if>>회원아이디</option>
			<option value="name" <c:if test="${searchType == 'name'}">selected</c:if>>성명</option>
			<option value="phoneMobile" <c:if test="${searchType == 'phoneMobile'}">selected</c:if>>휴대폰번호</option>
			<option value="email" <c:if test="${searchType == 'email'}">selected</c:if>>이메일</option>
		</select>
		<span class="input_clear_wrap"><input type="text" name="stx" class="input_form" title="검색어" value="${searchKeyword}" /><i class="fas fa-times-circle"></i></span>
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
<c:forEach var="partner" items="${partnerList}" varStatus="status">
	<tr>
		<td class="center">${status.count}</td>
		<td class="center">${partner.roleName}</td>
		<td class="center">${partner.id}</td>
		<td class="center">${partner.name}</td>
		<td class="center">${partner.phoneMobile}</td>
		<td class="center">${partner.email}</td>
		<td class="center">${partner.createdAt}</td>
		<td class="center">${partner.deletedAt}</td>
		<td class="center">
			<a href="<c:url value='/admin/user/partner/mod/${partner.id}' />"><div class="ab_m ab_redline">수정</div></a>&nbsp;
			<div class="ab_m ab_h" data-href="/admin/user/partner/del/${partner.id}">삭제</div>
		</td>
	</tr>
</c:forEach>
<c:if test="${empty partnerList}">
	<tr>
		<td colspan="9" class="center">등록된 협력사가 없습니다.</td>
	</tr>
</c:if>
</tbody>
</table>

		</div> <!-- main_contents -->

<script>
// 삭제 기능
document.addEventListener('DOMContentLoaded', function() {
    const deleteButtons = document.querySelectorAll('[data-href]');
    deleteButtons.forEach(button => {
        button.addEventListener('click', function() {
            const href = this.getAttribute('data-href');
            if (confirm('정말 삭제하시겠습니까?')) {
                axios.post(href)
                    .then(response => {
                        if (response.data === 'success') {
                            alert('삭제되었습니다.');
                            location.reload();
                        } else {
                            alert('삭제에 실패했습니다.');
                        }
                    })
                    .catch(error => {
                        console.error('Error:', error);
                        alert('삭제 중 오류가 발생했습니다.');
                    });
            }
        });
    });
});
</script>

<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>