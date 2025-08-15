<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

		<div class="main_contents">
			<div class="sub_top">
				<h2>방문자현황</h2>
			</div>

<form name="search_form" method="get" action="<c:url value='/admin/site/visitor/domain' />">
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
	<col style="width:16%;" />
	<col />
	<col style="width:8%;" />
	<col style="width:8%;" />
</colgroup>
<thead>
<tr>
    <th>순위</th>
    <th>접속 도메인</th>
    <th>그래프</th>
    <th>비율</th>
    <th>방문자수</th>
</tr>
</thead>
<tbody>
	<c:choose>
		<c:when test="${empty domainStats}">
			<tr>
				<td colspan="5" class="center">데이터가 없습니다.</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach var="stat" items="${domainStats}" varStatus="status">
				<tr>
					<td class="center">${status.count}</td>
					<td class="center">${stat.domainType}</td>
					<td><div class="visit_graph_wrap"><div class="bars" style="width:${stat.percentage}%;"></div></div></td>
					<td class="right"><fmt:formatNumber value="${stat.percentage}" pattern="0.00"/>%</td>
					<td class="right">${stat.visitCount}</td>
				</tr>
			</c:forEach>
		</c:otherwise>
	</c:choose>
</tbody>
<tfoot>
<tr>
	<td class="center" colspan="4">합계</td>
	<td class="right">
		<c:set var="total" value="0"/>
		<c:forEach var="stat" items="${domainStats}">
			<c:set var="total" value="${total + stat.visitCount}"/>
		</c:forEach>
		${total}
	</td>
</tr>
</tfoot>
</table>


		</div> <!-- main_contents -->
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>