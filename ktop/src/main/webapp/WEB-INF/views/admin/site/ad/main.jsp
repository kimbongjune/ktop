<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="main_contents">
	<div class="sub_top">
		<h2>배너관리</h2>
	</div>

	<ul class="tabmenu01">
		<li class="on"><a href="<c:url value='/admin/site/ad/main' />">메인배너</a></li>
		<li ><a href="<c:url value='/admin/site/ad/popup' />">팝업배너</a></li>
		<li ><a href="<c:url value='/admin/site/ad/bottom' />">하단배너</a></li>
		<li ><a href="<c:url value='/admin/site/ad/middle' />">메인중간배너</a></li>
	</ul>
	
	<a href="<c:url value='/admin/site/ad/write?position=main' />"><div class="ab_m ab_blue"><i class="fas fa-clone"></i>생성</div></a>

	<form name="search_form" method="post" action="#">
		<input type="hidden" name="gc" value="banner" />
		<div class="gsearch_box">
			<div class="ginfo ginfo2"><i class="fas fa-layer-group"></i>Total : <span>${pagination.totalCount}</span></div>
			<div class="gsearch">
				<select name="sit">
					<option value="banner_title" >배너명</option>
					<option value="banner_link" >링크</option>
				</select>
				<span class="input_clear_wrap"><input type="text" name="stx" class="input_form" title="검색어" value="" /><a href="http://localhost:3000/gwizard/?gc=banner"><i class="fas fa-times-circle"></i></a></span>
				<input type="submit" class="ab_m ab_gray ab_h Fix_FormBtns" value="검색" />
			</div>
		</div>
	</form>

	<table class="gtable">
		<colgroup>
			<col style="width:80px;" />
			<col style="width:120px;" />
			<col style="width:20%;" />
			<col />
			<col style="width:80px;" />
			<col style="width:120px;" />
		</colgroup>
		<thead>
			<tr>
				<th>번호</th>
				<th>이미지</th>
				<th>배너명</th>
				<th>링크URL</th>
				<th>출력여부</th>
				<th>작업</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${not empty bannerList}">
					<c:forEach var="banner" items="${bannerList}" varStatus="status">
						<tr>
							<td class="center">${status.count}</td>
							<td class="center">
								<c:if test="${not empty banner.file}">
									<img src="<c:url value='${banner.file.filePath}' />" class="popimg_btns cursor w100" alt="${banner.title}" style="max-width: 100px; max-height: 60px;" />
								</c:if>
								<c:if test="${empty banner.file}">
									<span class="text-muted">이미지 없음</span>
								</c:if>
							</td>
							<td>${banner.title}</td>
							<td>
								<c:choose>
									<c:when test="${not empty banner.linkUrl}">
										<a href="${banner.linkUrl}" target="_blank">${banner.linkUrl}</a>
									</c:when>
									<c:otherwise>-</c:otherwise>
								</c:choose>
							</td>
							<td class="center">
								<c:choose>
									<c:when test="${banner.active}">
										<span class="badge badge-success">출력</span>
									</c:when>
									<c:otherwise>
										<span class="badge badge-secondary">미출력</span>
									</c:otherwise>
								</c:choose>
							</td>
							<td class="center">
								<a href="<c:url value='/admin/site/ad/edit/${banner.id}' />"><div class="ab_m ab_redline">수정</div></a>&nbsp;
								<div class="ab_m delete_btns Fix_FormBtns" onclick="deleteBanner('${banner.id}')">삭제</div>
							</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="6" class="center">등록된 배너가 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>

	<!-- 페이징 -->
	<%@ include file="/WEB-INF/views/common/pagination.jsp" %>

</div>

<script>
function deleteBanner(id) {
    if (confirm('정말 삭제하시겠습니까?')) {
        axios.delete('<c:url value="/admin/site/ad/del/" />' + id)
            .then(function(response) {
                alert('삭제되었습니다.');
                location.reload();
            })
            .catch(function(error) {
                if (error.response && error.response.status === 409) {
                    alert(error.response.data.message || '데이터 제약으로 인해 삭제할 수 없습니다.');
                } else {
                    alert('삭제 중 오류가 발생했습니다.');
                }
            });
    }
}
</script>

<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>