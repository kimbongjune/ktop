<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
		<div class="main_contents">
			<div class="sub_top">
				<h2>게시글관리</h2>
			</div>



						
<a href="<c:url value='/admin/board/write' />"><div class="ab_m ab_blue"><i class="fas fa-clone"></i>생성</div></a>

<form name="search_form" method="post" action="#">
<input type="hidden" name="gc" value="FA" />
<div class="gsearch_box">
	<div class="ginfo ginfo2"><i class="fas fa-layer-group"></i>Total : <span>9</span></div>
	<div class="gsearch">
		<select name="sboard">
			<option value="">전체게시판</option>
							<option value="5" >main - 공지사항</option>
							<option value="15" >main - 자료실</option>
							<option value="17" >main - 자주묻는질문</option>
							<option value="16" >main - 질문과답변</option>
					</select>

		<select name="sit">
			<option value="bwrite_title" >제목</option>
			<option value="bwrite_content" >내용</option>
		</select>
		<span class="input_clear_wrap"><input type="text" name="stx" class="input_form" title="검색어" value="" /><a href="http://localhost:3000/gwizard/?gc=FA"><i class="fas fa-times-circle"></i></a></span>
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
		<tr>
			<td class="center">9</td>
			<td class="center">main - 자주묻는질문</td>
			<td class="">
								<a href="<c:url value='/admin/board/1' />">인재 POOL 등록안내</a>
											</td>
			<td class="center">관리자</td>
			<td class="center">2022-08-05</td>
			<td class="right">1</td>
			<td class="center">출력</td>
			<td class="center"><a href="<c:url value='/admin/board/1' />"><div class="ab_m ab_blueline">보기</div></a>&nbsp;<a href="<c:url value='/admin/board/edit/1' />"><div class="ab_m ab_redline">수정</div></a>&nbsp;<div class="ab_m delete_btns Fix_FormBtns" data-href="<c:url value='/admin/board/del/1' />">삭제</div></td>
		</tr>
			<tr>
			<td class="center">8</td>
			<td class="center">main - 자주묻는질문</td>
			<td class="">
								<a href="<c:url value='/admin/board/2' />">협력업체 등록안내</a>
											</td>
			<td class="center">관리자</td>
			<td class="center">2022-08-05</td>
			<td class="right">1</td>
			<td class="center">출력</td>
			<td class="center"><a href="<c:url value='/admin/board/2' />"><div class="ab_m ab_blueline">보기</div></a>&nbsp;<a href="<c:url value='/admin/board/edit/2' />"><div class="ab_m ab_redline">수정</div></a>&nbsp;<div class="ab_m delete_btns Fix_FormBtns" data-href="<c:url value='/admin/board/del/1' />">삭제</div></td>
		</tr>
	</tbody>
</table>
</form>




		</div> <!-- main_contents -->
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>