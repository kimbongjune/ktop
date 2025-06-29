<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link rel="stylesheet" href="<c:url value='/resources/static/css/product.css' />">

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
				<h2>상품관리</h2>
			</div> 
		
			<div class="sub_cont">
			
						
 			<ul class="tabmenu01">
				<li class=""><a href="<c:url value='/category/${categoryNum}' />" >협력사소개</a></li>
				<li class=""><a href="<c:url value='/category/${categoryNum}/guide' />" >협력사 가입안내</a></li>
				<c:if test="${not isTopLevelCategory}">
					<li class=""><a href="<c:url value='/category/${categoryNum}/join' />" >협력사 등록</a></li>
				</c:if>
				<c:if test="${partnerCompanyCount gt 0}">
					<li class="on"><a href="<c:url value='/category/${categoryNum}/material' />" >자재관리</a></li>
				</c:if>
			</ul>
		 
			
			
  
				<h3 class="sub_title">MYPAGE</h3>
						 <!--
<div class="product_tabmenu_wrap">

	<div class="product_tabmenu_box">
		<ul class="product_tabmenu_list01">
			<li>
				<div class="product_tabmenu_tit">목재</div>
				<ul class="product_tabmenu_list02">
					<li>전체</li>
					<li class="on">각목
						<div class="product_tabmenu_list03_box">
							<div class="product_tabmenu_list03_tr"></div>
							<ul class="product_tabmenu_list03">
								<li>긴각목</li>
								<li>짧은각목</li>
							</ul>
						</div>
					</li> 
					<li>좋은목재</li>
					<li>전체</li> 
					<li>판자</li>
					<li>좋은목재</li>
				</ul>
			</li>
			<li>
				<div class="product_tabmenu_tit">실내마감재</div>
				<ul class="product_tabmenu_list02">
					<li>전체</li> 
					<li>판자</li>
					<li>좋은목재</li>
				</ul>
			</li>
			<li>
				<div class="product_tabmenu_tit">실외마감재</div>
				<ul class="product_tabmenu_list02">
					<li>전체</li>
					<li>좋은목재</li>
					<li>각목</li> 
					<li>각목</li> 
				</ul>
			</li>
			<li>
				<div class="product_tabmenu_tit">석고</div>
				<ul class="product_tabmenu_list02">
					<li>전체</li>
					<li>각목</li>
					<li>판자</li>
					<li>좋은목재</li>
				</ul>
			</li> 
			<li>
				<div class="product_tabmenu_tit">단열재</div>
				<ul class="product_tabmenu_list02">
					<li>전체</li>
					<li>각목</li>
					<li>판자</li>
					<li>좋은목재</li>
				</ul>
			</li>  
		</ul>
	</div>
 

</div>

-->
<ul class="mypro_tab01">
    <li class="${empty param.materialCategoryId ? 'on' : ''}">
        <a href="<c:url value='/category/${categoryNum}/material' />">전체</a>
    </li>
    <c:forEach var="material" items="${materialList}">
        <c:set var="isActive" value="${param.materialCategoryId eq material.id}" />
        <c:forEach var="child" items="${material.children}">
            <c:if test="${param.materialCategoryId eq child.id}">
                <c:set var="isActive" value="true" />
            </c:if>
        </c:forEach>

        <li class="${isActive ? 'on' : ''}">
            <a href="<c:url value='/category/${categoryNum}/material'>
                <c:param name='materialCategoryId' value='${material.id}' />
            </c:url>">${material.name}</a>
        </li>
    </c:forEach>
</ul>


<!-- 하위 카테고리 탭 -->
<c:if test="${not empty param.materialCategoryId}">
	<div class="mypro_tab02_wrap">
	    <ul class="mypro_tab02">
	        <c:forEach var="material" items="${materialList}">
	            <c:set var="isParentSelected" value="${param.materialCategoryId eq material.id}" />
	
	            <c:set var="isChildSelected" value="false" />
	            <c:forEach var="child" items="${material.children}">
	                <c:if test="${param.materialCategoryId eq child.id}">
	                    <c:set var="isChildSelected" value="true" />
	                </c:if>
	            </c:forEach>
	
	            <c:if test="${isParentSelected or isChildSelected}">
	                <!-- 하위 '전체' -->
	                <li class="${isParentSelected ? 'on' : ''}">
	                    <a href="<c:url value='/category/${categoryNum}/material'>
	                        <c:param name='materialCategoryId' value='${material.id}' />
	                    </c:url>">전체</a>
	                </li>
	
	                <!-- 하위 자식 목록 -->
	                <c:forEach var="child" items="${material.children}">
	                    <li class="${param.materialCategoryId eq child.id ? 'on' : ''}">
	                        <a href="<c:url value='/category/${categoryNum}/material'>
	                            <c:param name='materialCategoryId' value='${child.id}' />
	                        </c:url>">${child.name}</a>
	                    </li>
	                </c:forEach>
	            </c:if>
	        </c:forEach>
	    </ul>
	</div>
</c:if>


<div class="h30p"></div>

<!-- <div class="gsearch_box">
	<div class="ginfo ginfo2 fl">총 <span>0</span>개의 상품이 있습니다</div>
	<div class="gsearch fr">
		<a href="#"><span class="ab_m ab_black"><i class="fas fa-file-export"></i>등록상품 엑셀출력</span></a>
	</div>
</div> -->
<table width="100%" class="form_table">
<colgroup>
	<col style="width:15%;" class="myproduct_list_pc" />
	<col style="width:20%;" class="myproduct_list_pc" />
	<col class="myproduct_list_pc" />
	<col class="myproduct_list_mobile" />
	<col class="myproduct_list_mobile1" />
	<col class="myproduct_list_mobile2" />
	<col class="myproduct_list_mobile1" />
</colgroup>
<thead>
<tr>
	<th class="myproduct_list_pc">썸네일</th>
	<th class="myproduct_list_pc">상품명</th>
	<th class="myproduct_list_pc">상품 설명</th>
	<th class="myproduct_list_mobile">상품 설명</th>
	<th>가격</th>
	<th>판매여부</th>
	<th>작업</th>
</tr>
</thead>
<tbody>
	<c:forEach var="material" items="${materials}">
		<tr>
			<td class="center myproduct_list_pc" rowspan="1">
				<img src="<c:url value='${material.materialFile.file.filePath}' />"
				     class="cursor w100"
				     alt="클릭시 큰 이미지" />
			</td>
			<td class="center myproduct_list_pc" rowspan="1"><strong>${material.name}</strong></td>
			<td class="left myproduct_list_pc"><strong>${material.description}</strong></td>
			<td class="left myproduct_list_mobile">
				<strong>${material.name}</strong><br />
				${material.description}
			</td>
			<td class="right">
				<div class=" w80p right"><fmt:formatNumber value="${material.price}" /> 원</div>
			</td>
			<td class="center">
				<input type="checkbox" value="1" disabled <c:if test="${material.active eq true}">checked</c:if> />
			</td>
			<td class="center">
				<div class="ab_m delete_btns Fix_FormBtns" onclick="location.href='<c:url value='/category/${categoryNum}/material/edit/${material.id}' />'">수정</div>
				<form method="post"
				      action="<c:url value='/category/${categoryNum}/material/delete/${material.id}' />"
				      style="display: inline;">
					<button type="submit" class="ab_m delete_btns Fix_FormBtns"
					        onclick="return confirm('정말 삭제하시겠습니까?');">
						삭제
					</button>
				</form>
			</td>
		</tr>
	</c:forEach>

	</tbody>
</table>

<!-- 페이징 -->
<%@ include file="/WEB-INF/views/common/pagination.jsp" %>

<div class="pt20 center">
	<a href="<c:url value='/category/${categoryNum}/material/write' />"><div class="bbs_btn01">자재 등록</div></a>
</div>


	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script src="<c:url value='/resources/static/js/product.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>