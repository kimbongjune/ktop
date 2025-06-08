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

							<ul class="tabmenu01">
								<li class=""><a href="<c:url value='/category/${categoryNum}' />" >협력사소개</a></li>
								<li class="on"><a href="<c:url value='/category/${categoryNum}/guide' />" >협력사 가입안내</a></li>
								<c:if test="${not isTopLevelCategory}">
									<li class=""><a href="<c:url value='/category/${categoryNum}/join' />" >협력사 등록</a></li>
								</c:if>
								<c:if test="${partnerCompanyCount gt 0}">
									<li class=""><a href="<c:url value='/category/${categoryNum}/material' />" >자재관리</a></li>
								</c:if>
							</ul>
			
						
 
		 
			
			
  
				 
				<h3 class="sub_title">자재</h3>
						

<div class="wait_box">
	<em>!</em>
	<h2>페이지 <span>준비중</span> 입니다.</h2>
	<p>현재 페이지는 서비스 준비중에 있습니다.<br />빠른시일 안에 정상 서비스 하도록 하겠습니다.</p>
</div>

	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>