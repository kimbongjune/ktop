<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>
<link rel="stylesheet" href="<c:url value='/resources/static/css/company.css' />">
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
		<div class="main_contents">
			<div class="sub_top">
				<h2>협력업체관리</h2>
			</div>



<div class="ghalf">

<div class="ginfo_top">
	<h2>망고건축자재</h2>
	<div class="wrap">
		<dl>
			<dt>관리회원</dt>
			<dd>${partner.userName} [${partner.id}]</dd>
		</dl>
		<dl>
			<dt>업체명</dt>
			<dd>${partner.companyDto.companyName}</dd>
		</dl>
		<dl>
			<dt>대표자명</dt>
			<dd>${partner.companyDto.ceoName}</dd>
		</dl>
		<dl>
			<dt>전화번호</dt>
			<dd>${partner.companyDto.phone}</dd>
		</dl>
		<dl>
			<dt>이메일</dt>
			<dd>${partner.companyDto.email}</dd>
		</dl>
		<dl>
			<dt>주소</dt>
			<dd>${partner.companyDto.address1} ${partner.companyDto.address2}</dd>
		</dl>
		<dl>
			<dt>홈페이지</dt>
			<dd>${partner.companyDto.homepage}</dd>
		</dl>
		<dl>
			<dt>지역</dt>
			<dd>${partner.companyDto.regionName}</dd>
		</dl>
		<dl>
			<dt>사업자등록증 사본</dt>
			<dd>
				<a class="ahref_btns cursor" href="<c:url value='/download?id=${partner.companyFileList[0].file.id}' />">
					<i class="fas fa-paperclip"></i> 
					<span class="fname">${partner.companyFileList[0].file.originalName}</span> 
					<span class="fsize">(${partner.companyFileList[0].file.fileSizeNumber}
					<span class="fpilsu">${partner.companyFileList[0].file.fileSizeUnit}</span>)</span>
				</a>
			</dd>
		</dl>
	</div>
</div>

<ul class="tabmenu01">
		<li><a href="<c:url value='/admin/partner/${partner.id}/${partner.categoryId}' />">심사</a></li>
		<li class="on"><a href="<c:url value='/admin/partner/${partner.id}/${partner.categoryId}/product' />">등록제품</a></li>
	</ul>
<table width="100%" class="gtable">
<colgroup>
	<col style="width:15%;" />
	<col style="width:20%;" />
	<col />
	<col style="width:15%;" />
	<col style="width:80px;" />
</colgroup>
<thead>
<tr>
	<th>썸네일</th>
	<th>상품명</th>
	<th>설명</th>
	<th>가격</th>
	<th>판매여부</th>
</tr>
</thead>
<tbody>
<c:forEach var="material" items="${materialList}">
    <tr>
        <td class="center" rowspan="1">
            <img src="<c:url value='${material.materialFile.file.filePath}' />"
                 class="popimg_btns cursor w100"
                 data-href="<c:url value='${material.materialFile.file.filePath}' />"
                 alt="클릭시 큰 이미지" />
        </td>
        <td class="center" rowspan="1">
            <c:out value="${material.name}" />
        </td>
        <td class="center">${material.description}</td>
        <td class="center">
            <fmt:formatNumber value="${material.price}" pattern="#,###" /> 원
        </td>
        <td class="center">
            <span class="fblue">
                <c:choose>
                    <c:when test="${material.active}">판매 중</c:when>
                    <c:otherwise>판매 안함</c:otherwise>
                </c:choose>
            </span>
        </td>
    </tr>
</c:forEach>
</tbody>
</table>

<div class="pt20 center">
	<a href="<c:url value='/admin/partner' />"><div class="ab_m"><i class="fas fa-th-list"></i>목록</div></a>
</div>

</div>

		</div> <!-- main_contents -->
<script src="<c:url value='/resources/static/js/company.js' />"></script>
<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>