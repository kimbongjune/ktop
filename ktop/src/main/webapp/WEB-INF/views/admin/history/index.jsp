<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
<div class="main_contents">
	<div class="sub_top">
		<h2>히스토리</h2>
	</div>

	<form name="search_form" method="get" action="">

		<div class="gsearch">
			<table class="gtable">
				<colgroup>
					<col style="width: 15%;" />
					<col style="width: 35%;" />
					<col style="width: 15%;" />
					<col />
				</colgroup>
				<tbody>
					<tr>
						<th>회원아이디</th>
						<td>
							<input type="text" name="searchUserId" class="input_form" title="회원아이디" value="${searchDto.searchUserId}" />
						</td>
						<th>타입</th>
						<td>
							<select name="searchType">
								<option value="">:선택:</option>
								<option value="LOGIN" ${searchDto.searchType == 'LOGIN' ? 'selected' : ''}>로그인</option>
								<option value="LOGOUT" ${searchDto.searchType == 'LOGOUT' ? 'selected' : ''}>로그아웃</option>
								<option value="USER_UPDATE" ${searchDto.searchType == 'USER_UPDATE' ? 'selected' : ''}>회원정보 수정</option>
								<option value="CREATE" ${searchDto.searchType == 'CREATE' ? 'selected' : ''}>작성</option>
								<option value="UPDATE" ${searchDto.searchType == 'UPDATE' ? 'selected' : ''}>수정</option>
								<option value="DELETE" ${searchDto.searchType == 'DELETE' ? 'selected' : ''}>삭제</option>
								<option value="FILE_UPLOAD" ${searchDto.searchType == 'FILE_UPLOAD' ? 'selected' : ''}>파일업로드</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>기간</th>
						<td>
							<input type="text" name="startDate" class="input_form input_datepicker w90p" title="시작기간" value="${searchDto.startDate}" /> ~ <input type="text" name="endDate" class="input_form input_datepicker w90p" title="종료기간" value="${searchDto.endDate}" />
						</td>
						<th>아이피</th>
						<td>
							<input type="text" name="searchIp" class="input_form" title="아이피" value="${searchDto.searchIp}" />
						</td>
					</tr>
				</tbody>
			</table>
			<div class="pt20 center">
				<button type="submit" class="ab_m ab_blue">
					<i class="fas fa-search"></i>검색조건반영
				</button>
				<a href="?"><div class="ab_m">
						<i class="fas fa-redo"></i>검색초기화
					</div></a>
			</div>
		</div>
	</form>

	<div class="gsearch_box mt20">
		<div class="ginfo ginfo2" style="padding: 5px 0;">
			<i class="fas fa-layer-group"></i>Total : <span>${pagination.totalCount}</span>
		</div>
	</div>

	<table class="gtable">
		<colgroup>
			<col style="width: 80px;" />
			<col style="width: 150px;" />
			<col style="width: 120px;" />
			<col style="width: 120px;" />
			<col style="width: 120px;" />
			<col />
		</colgroup>
		<thead>
			<tr>
				<th>번호</th>
				<th>사용일시</th>
				<th>회원아이디</th>
				<th>타입</th>
				<th>아이피</th>
				<th>파라미터</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="history" items="${historyList}">
				<tr>
					<td class="center">${history.id}</td>
					<td class="center">${history.createdAt}</td>
					<td class="center">${history.userId}</td>
					<td class="center">${history.type}</td>
					<td class="center">${history.ip}</td>
					<td>${history.parameters}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


	<div class="page_box pt40">
		<c:if test="${pagination.totalPages > 1}">
			<!-- 첫 페이지로 -->
			<c:if test="${pagination.page > 1}">
				<a href="?page=1" class="parrow03" title="처음">&nbsp;</a>
			</c:if>
			
			<!-- 페이지 번호들 -->
			<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="pageNum">
				<c:choose>
					<c:when test="${pageNum == pagination.page}">
						<a href="#" class="on">${pageNum}</a>
					</c:when>
					<c:otherwise>
						<a href="?page=${pageNum}">${pageNum}</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			
			<!-- 다음 페이지로 -->
			<c:if test="${pagination.hasNext}">
				<a href="?page=${pagination.page + 1}" class="parrow02" title="다음">&nbsp;</a>
			</c:if>
			
			<!-- 마지막 페이지로 -->
			<c:if test="${pagination.page < pagination.totalPages}">
				<a href="?page=${pagination.totalPages}" class="parrow04" title="마지막">&nbsp;</a>
			</c:if>
		</c:if>
	</div>

</div>
<!-- main_contents -->
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>