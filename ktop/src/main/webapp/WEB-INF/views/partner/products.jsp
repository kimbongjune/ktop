<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link rel="stylesheet" href="<c:url value='/resources/static/css/company.css' />">
		<section class="sub_container"> 
		<h6>서브 콘텐츠</h6> 
			<div class="sub_category_box">  
		 
									<div class="lnb">
				<div class="web_size">  
					<ul>	
						<c:forEach var="category" items="${categorySubList}">
							<li ${category.id eq categoryNum ? 'class="on"' : ''}><a href="<c:url value='/category/${category.id}' />">${category.name}</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			
		<div class="web_size">  
					<div class="sub_top">  
				<h2>협력사 소개</h2>
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">시공업체</h3>
						
<ul class="tabmenu01">
	<li ><a href="<c:url value='/partner/${categoryNum}/${companyNum}' />">협력사 정보</a></li>
	<li class="on"><a href="<c:url value='/partner/${categoryNum}/${companyNum}/products' />">등록상품</a></li>
</ul>
 
<div class="company_view_h4">
	<div class="company_list_top_txt">총 <strong>${pagination.totalCount}</strong>개의 상품이 있습니다.</div>
	<div class="company_view_product_search"> 
		<form method="get" name="search" action="<c:url value='' />" >
			<%-- <select name="searchType" title="검색 옵션">
				<option ${param.searchType eq 'name' ? 'selected' : ''} value="name" >이름</option>
				<option ${param.searchType eq 'description' ? 'selected' : ''} value="description" >내용</option>
			</select> --%>
			<input type="text" name="keyword" title="검색어 입력" placeholder="검색어를 입력하세요" value="${param.keyword }" />	
			<button type="submit" id="searchBtn">검색</button>	
		</form>
	</div>
</div>

<div class="company_view_productlist_wrap">
<ul>
	<c:forEach var="material" items="${materials}">
		<li> 
			<div class="company_view_productlist_thum">
					<img src="<c:url value="${material.materialFile.file.filePath}"/>" class="popimg_btns cursor" data-href="<c:url value="${material.materialFile.file.filePath}"/>" alt="클릭시 큰 이미지" />
			</div>
			<div class="company_view_productlist_tit">
					<div class="company_view_productlist_tit_btn"><a href="<c:url value='/material/${material.id}' />" target="_blank"><div class="ab_m ab_blueline">보기</div></a></div>
					<div class="company_view_productlist_name">${material.name}</div> 
			</div>
						
			<div class="company_view_productlist_info">
				<div class="company_view_productlist_cate">${material.description}</div>
				<div class="company_view_productlist_price">
					<span><fmt:formatNumber value="${material.price}" /></span> 원&nbsp;&nbsp; 
					<!-- <div class="icon_free_no">배송비별도</div> 
					<div class="icon_return_no">반품불가</div>  -->
				</div>	 
			</div>
		</li>
	</c:forEach>
</ul>
</div>

<!-- 페이징 -->
<%@ include file="/WEB-INF/views/common/pagination.jsp" %>

<div class="pt40 center">
	<a href="<c:url value='/category/${categoryNum}' />"><div class="bbs_btn01">목록</div></a>
</div>



	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script src="<c:url value='/resources/static/js/company.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>