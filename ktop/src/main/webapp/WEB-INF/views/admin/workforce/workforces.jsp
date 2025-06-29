<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
<link rel="stylesheet" href="<c:url value='/resources/static/css/person.css' />">
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="main_contents">
	<div class="sub_top">
		<h2>인력풀 관리</h2>
	</div>



	<div class="ghalf">

		<form name="search_form">
			<div class="gsearch_box">
				<div class="ginfo ginfo2">
					<i class="fas fa-layer-group"></i>Total : <span>${pagination.totalCount}</span>
				</div>
				<div class="gsearch">
					<select name="searchType">
						<option value="name">이름</option>
					</select>
					<span class="input_clear_wrap">
						<input type="text" name="keyword" class="input_form" title="검색어" value="${param.keyword}" />
						<i class="fas fa-times-circle"></i>
					</span> 
					<input type="submit" class="ab_m ab_gray ab_h Fix_FormBtns" value="검색" />
				</div>
			</div>
		</form>


			<table class="gtable">
				<colgroup>
					<col style="width: 150px;" />
					<col style="width: 150px;" />
					<col />
					<col style="width: 200px;" />
					<col style="width: 180px;" />
					<col style="width: 160px;" />
				</colgroup>
				<thead>
					<tr>
						<th>신청자ID</th>
						<th>이름</th>
						<th>활동분야</th>
						<th>연락처</th>
						<th>이메일</th>
						<th>작업</th>
					</tr>
				</thead>
				<tbody>
				    <c:forEach var="worker" items="${workers}">
				        <tr>
				            <td class="center">${worker.userId}</td>
				            <td class="center">${worker.name}</td>
				            <td class="center">
				                <c:forEach var="field" items="${worker.fieldList}" varStatus="status">
				                    ${field.fieldName}<c:if test="${!status.last}">, </c:if>
				                </c:forEach>
				            </td>
				            <td class="center">${worker.user.phoneMobile}</td>
				            <td class="center">${worker.user.email}</td>
				            <td class="center">
				                <a href="<c:url value='/admin/workforce/${worker.userId}' />">
				                    <div class="ab_m ab_blueline">보기</div>
				                </a>
				            </td>
				        </tr>
				    </c:forEach>
				</tbody>
			</table>

			<!-- 페이징 -->
			<%@ include file="/WEB-INF/views/common/pagination.jsp" %>

	</div>

</div>
<!-- main_contents -->
<script src="<c:url value='/resources/static/js/person.js' />"></script>
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>