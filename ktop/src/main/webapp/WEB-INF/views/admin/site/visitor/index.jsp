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

<!-- 전체 개수 표시 -->
<div class="ginfo ginfo2">
	<i class="fas fa-layer-group"></i>Total : <span>${pagination.totalCount}</span>
</div>

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

<!-- 페이지네이션 -->
<c:if test="${pagination.totalCount > 0}">
	<div class="pagination_wrap">
		<div class="pagination">
			<!-- 전체 개수 및 현재 페이지 정보 -->
			<div class="pagination_info">
				총 <strong>${pagination.totalCount}</strong>개 중 
				<strong>${(pagination.page - 1) * pagination.size + 1}</strong> ~ 
				<strong>${pagination.page * pagination.size > pagination.totalCount ? pagination.totalCount : pagination.page * pagination.size}</strong>
				(현재 <span class="current_page">${pagination.page}</span> / ${pagination.totalPages} 페이지)
			</div>
			
			<!-- 페이지 네비게이션 -->
			<div class="pagination_nav">
				<c:if test="${pagination.hasPrevious}">
					<a href="<c:url value='/admin/site/visitor' />?startDate=${startDate}&endDate=${endDate}&page=${pagination.page - 1}" class="prev">◀ 이전</a>
				</c:if>
				
				<c:forEach var="pageNum" begin="${pagination.startPage}" end="${pagination.endPage}">
					<c:choose>
						<c:when test="${pageNum == pagination.page}">
							<span class="current_page_num">${pageNum}</span>
						</c:when>
						<c:otherwise>
							<a href="<c:url value='/admin/site/visitor' />?startDate=${startDate}&endDate=${endDate}&page=${pageNum}" class="page_num">${pageNum}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				
				<c:if test="${pagination.hasNext}">
					<a href="<c:url value='/admin/site/visitor' />?startDate=${startDate}&endDate=${endDate}&page=${pagination.page + 1}" class="next">다음 ▶</a>
				</c:if>
			</div>
		</div>
	</div>
</c:if>

<style>
.pagination_wrap {
	margin: 20px 0;
	text-align: center;
}

.pagination {
	display: inline-block;
}

.pagination_info {
	margin-bottom: 10px;
	font-size: 14px;
	color: #666;
}

.pagination_info .current_page {
	color: #007bff;
	font-weight: bold;
	font-size: 16px;
}

.pagination_nav {
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 5px;
}

.pagination_nav a, .pagination_nav span {
	display: inline-block;
	padding: 8px 12px;
	border: 1px solid #ddd;
	border-radius: 4px;
	text-decoration: none;
	color: #333;
	font-size: 14px;
	min-width: 35px;
	text-align: center;
}

.pagination_nav a:hover {
	background-color: #f8f9fa;
	border-color: #007bff;
	color: #007bff;
}

.pagination_nav .current_page_num {
	background-color: #007bff;
	color: white;
	border-color: #007bff;
	font-weight: bold;
}

.pagination_nav .prev, .pagination_nav .next {
	background-color: #f8f9fa;
	font-weight: bold;
}

.pagination_nav .prev:hover, .pagination_nav .next:hover {
	background-color: #e9ecef;
}
</style>

		</div> <!-- main_contents -->
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>