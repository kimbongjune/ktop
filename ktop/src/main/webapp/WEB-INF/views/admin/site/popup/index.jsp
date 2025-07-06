<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
		<div class="main_contents">
			<div class="sub_top">
				<h2>팝업관리</h2>
				<ul class="sub_navi">
					<li>사이트관리</li>
										<li class="path01"><a href="http://localhost:3000/gwizard/?gc=BC" >팝업관리</a></li>
									</ul>
			</div>



						
<a href="<c:url value='/admin/site/popup/write' />"><div class="ab_m ab_blue"><i class="fas fa-clone"></i>생성</div></a>

<form name="search_form" method="post" action="#">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
<input type="hidden" name="gc" value="BC" />
<div class="gsearch_box">
	<div class="ginfo ginfo2"><i class="fas fa-layer-group"></i>Total : <span>1</span></div>
	<div class="gsearch">
		<select name="sit">
			<option value="popup_title" >제목</option>
		</select>
		<span class="input_clear_wrap"><input type="text" name="stx" class="input_form" title="검색어" value="" /><i class="fas fa-times-circle"></i></span>
		<input type="submit" class="ab_m ab_gray ab_h Fix_FormBtns" value="검색" />
	</div>
</div>
</form>


<table class="gtable">
<colgroup>
	<col style="width:80px;" />
	<col />
	<col style="width:25%;" />
	<col style="width:120px;" />
</colgroup>
<thead>
<tr>
	<th>번호</th>
	<th>제목</th>
	<th>기간</th>
	<th>작업</th>
</tr>
</thead>
<tbody>
	<c:forEach var="popup" items="${popupList}" varStatus="status">
		<tr>
			<td class="center">${status.count}</td>
			<td>${popup.title}</td>
			<td class="center">
				<fmt:parseDate value="${popup.startAt}" pattern="yyyy-MM-dd HH:mm:ss" var="startAtDate" />
				<fmt:formatDate value="${startAtDate}" pattern="yyyy-MM-dd" />
				~
				<fmt:parseDate value="${popup.endAt}" pattern="yyyy-MM-dd HH:mm:ss" var="endAtDate" />
				<fmt:formatDate value="${endAtDate}" pattern="yyyy-MM-dd" />
			</td>
			<td class="center">
				<a href="<c:url value='/admin/site/popup/edit/${popup.id}' />"><div class="ab_m ab_redline">수정</div></a>
				<a href="<c:url value='/admin/site/popup/del/${popup.id}' />" onclick="return confirm('정말 삭제하시겠습니까?');"><div class="ab_m">삭제</div></a>
			</td>
		</tr>
	</c:forEach>
	<c:if test="${empty popupList}">
		<tr>
			<td colspan="4" class="center">등록된 팝업이 없습니다.</td>
		</tr>
	</c:if>
	</tbody>
</table>




		</div> <!-- main_contents -->
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>