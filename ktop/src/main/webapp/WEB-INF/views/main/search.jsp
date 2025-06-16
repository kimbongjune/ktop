<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link rel="stylesheet" href="<c:url value='/resources/static/css/product.css' />">

		<section class="sub_container"> 
		<h6>서브 콘텐츠</h6> 
			<div class="sub_category_box">  
		 
						
		<div class="web_size">  
					<div class="sub_top">  
				<h2></h2>
				<ul class="location">
									</ul>
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
						<div class="product_list_wrap">
 
<div class="product_list_search_box">
<div class="product_list_search_tit">QUICK SEARCH</div>
	<form method="get" name="search" action="<c:url value='search' />" >
		<ul class="product_list_search_category">
		    <c:choose>
		        <c:when test="${empty paramValues.region or (fn:length(paramValues.region) == 1 and paramValues.region[0] == '')}">
		            <li class="select">
		                <input type="checkbox" id="region_all" class="area_checkbox" name="region" value="" checked />
		                <label for="region_all" class="area_select">전체</label>
		            </li>
		        </c:when>
		        <c:otherwise>
		            <li>
		                <input type="checkbox" id="region_all" class="area_checkbox" name="region" value="" />
		                <label for="region_all" class="area_select">전체</label>
		            </li>
		        </c:otherwise>
		    </c:choose>
		
		    <c:forEach var="region" items="${regionList}">
		        <c:set var="selected" value="false" />
		        <c:forEach var="r" items="${paramValues.region}">
		            <c:if test="${r == region.id}">
		                <c:set var="selected" value="true" />
		            </c:if>
		        </c:forEach>
		
		        <li <c:if test="${selected}">class="select"</c:if>>
		            <input type="checkbox"
		                   id="region_${region.id}"
		                   class="area_checkbox"
		                   name="region"
		                   value="${region.id}"
		                   <c:if test="${selected}">checked</c:if> />
		            <label for="region_${region.id}" class="area_select">${region.name}</label>
		        </li>
		    </c:forEach>
		</ul>
		<div class="product_list_search_form_box"> 
			<span class="input_clear_wrap">
				<input type="text" name="keyword" id="search" class="product_list_search_input" title="검색어" value="${param.keyword}" placeholder="ex) 샌드위치판넬, 석고보드" /><a><i class="fas fa-times-circle" id="cleanSearch"></i></a></span>
			<input type="submit" class="product_list_search_btn  Fix_FormBtns" value="검색하기" />
		</div>
	</form>
</div>
<div class="product_list_cont"> 

<div class="product_list_top_txt">총 <strong>${fn:length(materials)}</strong>개의 상품이 있습니다.</div>
<ul class="product_list">
	<c:forEach var="material" items="${materials}">
		<li>
			<div class="thum">
				<a href="<c:url value='material/${material.id}' />" target="_blank">
					<img src="<c:url value="${material.materialFile.file.filePath}"/>" class="cursor w100" />
				</a>
			</div>
			<div class="cont">
				<div class="cate">
					<a href="<c:url value='material/${material.id}' />" target="_blank">
						[${material.materialName}] ${material.name}</a>
				</div>
				<div class="lowprice">
					<div class="product_lowprice_1" style="width:100%; position:relative; overflow:hidden;">
						<a href="<c:url value='material/${material.id}' />" target="_blank">
							<div class="product_list_size" style="width:50%;">${material.description}</div>
							<div class="product_list_price" style="width:25%;"><span><fmt:formatNumber value="${material.price}" /></span>원</div>
							<!-- <div class="product_list_shop" style="width:25%;">2 업체</div> -->
						</a>
					</div>
				</div>
			</div>
		</li>
	</c:forEach>
			
			<%-- <li>
		<div class="thum">
			<a href="<c:url value='material/2' />" target="_blank">
				<img src="<c:url value="/resources/static/image/2_6c333a1c784ce2eba633064d02e1d19e.jpg"/>" class="cursor w100" />
			</a>
		</div>
		<div class="cont">
			<div class="cate">
				<a href="<c:url value='material/2' />" target="_blank">
					[루바] 목재루바				</a>
			</div>
			<div class="lowprice">
					<div class="product_lowprice_2" style="width:100%; position:relative; overflow:hidden;">
				<a href="<c:url value='material/2' />" target="_blank">
					<div class="product_list_size" style="width:50%;">친환경 페인트 / 도포</div>
					<div class="product_list_price" style="width:25%;"><span>71,500</span>원</div>
					<div class="product_list_shop" style="width:25%;">2 업체</div>
				</a>
			</div>
					<div class="product_lowprice_2" style="width:100%; position:relative; overflow:hidden;">
				<a href="<c:url value='material/2' />" target="_blank">
					<div class="product_list_size" style="width:50%;">친환경 페인트 / 분사</div>
					<div class="product_list_price" style="width:25%;"><span>250,000</span>원</div>
					<div class="product_list_shop" style="width:25%;">1 업체</div>
				</a>
			</div>
					</div>
		</div>
	</li> --%>
			
	</ul>

</div>


</div>



	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script>
	$("#cleanSearch").click(function () {
	    $(this).css("visibility", "hidden");
	    $("#search").val("");
	});
</script>
<script src="<c:url value='/resources/static/js/product.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>