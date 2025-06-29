<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp"%>
<link rel="stylesheet" href="<c:url value='/resources/static/css/company.css' />">
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="main_contents">
	<div class="sub_top">
		<h2>협력업체관리</h2>

	</div>



	<form name="search_form" method="get" action="">
		<div class="gsearch_box">
			<div class="ginfo ginfo2">
				<i class="fas fa-layer-group"></i>Total : <span>${pagination.totalCount}</span>
			</div>
			<div class="gsearch">
				<select name="searchType">
					<option value="companyName">업체명</option>
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
			<col style="width: 200px;" />
			<col style="width: 110px;" />
			<col />
			<col style="width: 130px;" />
			<col style="width: 80px;" />
			<col style="width: 80px;" />
			<col style="width: 80px;" />
			<col style="width: 160px;" />
		</colgroup>
		<thead>
			<tr>
				<th>이미지</th>
				<th>관리자 ID</th>
				<th>업체명</th>
				<th>지역</th>
				<th>주소</th>
				<th>연락처</th>
				<th>등록 제품</th>
				<th>카테고리</th>
				<th>승인상태</th>
				<th>작업</th>
			</tr>
		</thead>
		<tbody>
	    <c:forEach var="partner" items="${partnerList}" varStatus="loop">
	        <tr>
	            <td class="center">
	                <img
					    src="<c:url value='${partner.companyFileList[0].file.filePath}' />"
					    class="popimg_btns cursor w100"
					    data-href="<c:url value='${partner.companyFileList[0].file.filePath}' />"
					    alt="클릭시 큰 이미지" />
	            </td>
	            <td class="center">${partner.id}</td>
	            <td class="center">
	                <a href="<c:url value='/admin/partner/${partner.id}/${partner.categoryId}' />">
	                    <b>${partner.companyDto.companyName}</b>
	                </a>
	            </td>
	            <td class="center">${partner.companyDto.regionName}</td>
	            <td>
	                [${partner.companyDto.zipcode}] ${partner.companyDto.address1} ${partner.companyDto.address2}
	            </td>
	            <td class="center">${partner.companyDto.phone}</td>
	            <td class="right">${partner.materialCount}건</td> <%-- 필요시 동적 데이터 바인딩 --%>
	            <td class="center">${partner.categoryName}</td>
	            <td class="center">
				    <c:choose>
				        <c:when test="${partner.status == 'pending'}">대기</c:when>
				        <c:when test="${partner.status == 'approved'}">승인</c:when>
				        <c:when test="${partner.status == 'rejected'}">반려</c:when>
				        <c:otherwise>알수없음</c:otherwise>
				    </c:choose>
				</td>
	            <td class="center">
	                <a href="<c:url value='/admin/partner/${partner.id}/${partner.categoryId}' />">
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
<!-- main_contents -->
<script src="<c:url value='/resources/static/js/company.js' />"></script>
<%@ include file="/WEB-INF/views/admin/common/footer.jsp"%>