<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

		<div class="main_contents">
			<div class="sub_top">
				<h2>방문자현황</h2>
			</div>

<form name="search_form" method="get" action="<c:url value='/admin/site/visitor' />">
<div class="gsearch_box">
	기간 : 
	<input type="text" name="startDate" class="input_form input_datepicker w90p" title="시작기간" value="${startDate}" /> -
	<input type="text" name="endDate" class="input_form input_datepicker w90p" title="종료기간" value="${endDate}" />&nbsp;
	<input type="submit" value="검색" class="btn_blue" style="padding: 5px 15px; margin-left: 5px; cursor: pointer;" />
	<div class="ab_m ab_blue admin_visit_btns"><a href="<c:url value='/admin/site/visitor' />">접속자</a></div>
	<div class="ab_m ab_blue admin_visit_btns"><a href="<c:url value='/admin/site/visitor/domain' />">도메인</a></div>
	<div class="ab_m ab_blue admin_visit_btns"><a href="<c:url value='/admin/site/visitor/browser' />">브라우저</a></div>
	<div class="ab_m ab_blue admin_visit_btns"><a href="<c:url value='/admin/site/visitor/os' />">OS</a></div>
	<div class="ab_m ab_blue admin_visit_btns"><a href="<c:url value='/admin/site/visitor/time' />">시간</a></div>
	<div class="ab_m ab_blue admin_visit_btns"><a href="<c:url value='/admin/site/visitor/day' />">요일</a></div>
	<div class="ab_m ab_blue admin_visit_btns"><a href="<c:url value='/admin/site/visitor/date' />">일</a></div>
	<div class="ab_m ab_blue admin_visit_btns"><a href="<c:url value='/admin/site/visitor/month' />">월</a></div>
	<div class="ab_m ab_blue admin_visit_btns"><a href="<c:url value='/admin/site/visitor/year' />">년</a></div>
</div>
</form>

<div class="h20p"></div>

<table class="gtable">
<colgroup>
	<col style="width:80px;" />
	<col style="width:14%;" />
	<col style="width:12%;" />
	<col style="width:10%;" />
	<col style="width:10%;" />
	<col />
</colgroup>
<thead>
<tr>
	<th>번호</th>
	<th>일시</th>
	<th>IP</th>
	<th>브라우저</th>
	<th>OS</th>
	<th>접속 경로</th>
</tr>
</thead>
<tbody>
	<c:choose>
		<c:when test="${empty visitorLogs}">
			<tr>
				<td colspan="6" class="center">데이터가 없습니다.</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach var="log" items="${visitorLogs}" varStatus="status">
				<tr>
					<td class="center">${log.id}</td>
					<td class="center">${log.visitDatetime}</td>
					<td class="center">${log.ipAddress}</td>
					<td class="center">${log.browser}</td>
					<td class="center">${log.os}</td>
					<td>
						<c:if test="${not empty log.pageUrl}">
							<a href="${log.pageUrl}" target="_blank" title="${log.pageUrl}">${log.pageUrl}</a>
						</c:if>
					</td>
				</tr>
			</c:forEach>
		</c:otherwise>
	</c:choose>
</tbody>
</table>




		</div> <!-- main_contents -->
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>