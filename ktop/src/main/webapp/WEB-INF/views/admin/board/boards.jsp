<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
		<div class="main_contents">
			<div class="sub_top">
				<h2>게시글관리</h2>
			</div>



						
<a href="<c:url value='/admin/board/write' />"><div class="ab_m ab_blue"><i class="fas fa-clone"></i>생성</div></a>

<form name="search_form" method="get" action="<c:url value='/admin/board' />">
<div class="gsearch_box">
	<div class="ginfo ginfo2"><i class="fas fa-layer-group"></i>Total : <span>${pagination.totalCount}</span></div>
	<div class="gsearch">
		<select name="boardType">
			<option value="">전체게시판</option>
			<option value="1" ${searchDto.boardType == 1 ? 'selected' : ''}>공지사항</option>
			<option value="2" ${searchDto.boardType == 2 ? 'selected' : ''}>질문과답변</option>
		</select>

		<select name="searchType">
			<option value="title" ${searchDto.searchType == 'title' ? 'selected' : ''}>제목</option>
			<option value="content" ${searchDto.searchType == 'content' ? 'selected' : ''}>내용</option>
		</select>
		<span class="input_clear_wrap">
			<input type="text" name="keyword" class="input_form" title="검색어" value="${searchDto.keyword}" />
			<i class="fas fa-times-circle"></i>
		</span>
		<input type="submit" class="ab_m ab_gray ab_h Fix_FormBtns" value="검색" />
	</div>
</div>
</form>


<form name="admin_bwrite_listform" method="post" action="#">
<input type="hidden" name="gc" value="FA" />
<input type="hidden" name="do" value="update" />
<input type="hidden" name="action" value="listdelete" />

<table class="gtable">
<colgroup>
	<col style="width:80px;" />
	<col style="width:15%;" />
	<col />
	<col style="width:8%;" />
	<col style="width:8%;" />
	<col style="width:6%;" />
	<col style="width:6%;" />
	<col style="width:160px;" />
</colgroup>
<thead>
<tr>
    <th>번호</th>
    <th>게시판명</th>
	<th>제목</th>
    <th>작성자</th>
    <th>작성일</th>
    <th>조회수</th>
    <th>상태</th>
    <th>작업</th>
</tr>
</thead>
<tbody>
<c:forEach var="board" items="${boards}">
	<tr>
		<td class="center">${board.id}</td>
		<td class="center">${board.boardType == 1 ? '공지사항' : '질문과답변'}</td>
		<td class="">
			<a href="<c:url value='/admin/board/${board.id}' />">${board.title}</a>
		</td>
		<td class="center">${board.author}</td>
		<td class="center">${board.createdAt}</td>
		<td class="right">${board.viewCount}</td>
		<td class="center">출력</td>
		<td class="center">
			<a href="<c:url value='/admin/board/${board.id}' />">
				<div class="ab_m ab_blueline">보기</div>
			</a>&nbsp;
			<a href="<c:url value='/admin/board/edit/${board.id}' />">
				<div class="ab_m ab_redline">수정</div>
			</a>&nbsp;
			<div class="ab_m delete_btns Fix_FormBtns" data-href="<c:url value='/admin/board/del/${board.id}' />">삭제</div>
		</td>
	</tr>
</c:forEach>
<c:if test="${empty boards}">
	<tr>
		<td colspan="8" class="center">조회 결과가 없습니다.</td>
	</tr>
</c:if>
</tbody>
</table>
</form>

<!-- 페이징 -->
<%@ include file="/WEB-INF/views/common/pagination.jsp" %>

		</div> <!-- main_contents -->
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>