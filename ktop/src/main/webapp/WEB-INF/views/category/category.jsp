<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
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
				<h2>협력사</h2>
			</div> 
		
			<div class="sub_cont"> 
							<sec:authorize access="hasRole('ROLE_PARTNER')">
								<ul class="tabmenu01">
									<li class="on"><a href="<c:url value='/category/${categoryNum}' />" >협력사소개</a></li>
									<li class=""><a href="<c:url value='/category/${categoryNum}/guide' />" >협력사 가입안내</a></li>
									<c:if test="${not isTopLevelCategory}">
										<li class=""><a href="<c:url value='/category/${categoryNum}/join' />" >협력사 등록</a></li>
									</c:if>
									<c:if test="${partnerCompanyCount gt 0}">
										<li class=""><a href="<c:url value='/category/${categoryNum}/material' />" >자재관리</a></li>
									</c:if>
								</ul>
							</sec:authorize>
			
						
				<h3 class="sub_title">협력사 (총 ${pagination.totalCount}건)</h3>
<div class="company_list_wrap">
<ul>
	<c:forEach var="partner" items="${partnerList}">
		<li>
			<a href="<c:url value='/partner/${partner.categoryId}/${partner.id}' />">
				<div class="company_list_thum" style="background:url('<c:url value='${partner.companyFileList[1].file.filePath}' />') no-repeat center 0;background-size:cover;"></div>
				<div class="company_list_name"><strong>${partner.companyDto.companyName}</strong> </div>
				<div class="company_list_add sub_list01">위치 : ${partner.companyDto.regionName}</div>
				<div class="company_list_tel sub_list01">전화 : 
				<sec:authorize access="isAnonymous()">
					<span>로그인 후 열람 가능</span></div> 
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<span>${partner.companyDto.phone}</span></div> 
				</sec:authorize>
			</a>
		</li>
	</c:forEach>
</ul>
</div> 

<!-- 페이징 -->
<%@ include file="/WEB-INF/views/common/pagination.jsp" %>



	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>