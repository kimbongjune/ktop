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
		<li class=""><a href="<c:url value='/category/${categoryNum}/guide' />" >협력사 가입안내</a></li>
		<c:if test="${not isTopLevelCategory}">
			<li class="on"><a href="<c:url value='/category/${categoryNum}/join' />" >협력사 등록</a></li>
		</c:if>
		<c:if test="${partnerCompanyCount gt 0}">
			<li class=""><a href="<c:url value='/category/${categoryNum}/material' />" >자재관리</a></li>
		</c:if>
	</ul>
	<h3 class="sub_title">자재</h3>
	<sec:authorize access="isAnonymous()">
		<div class="center mt30">
		    <div class="error_box">
				<i class="fas fa-exclamation-circle"></i>
				<div class="txt">로그인 후 사용 가능합니다.<span>회원이시라면 로그인 후 이용하시기 바랍니다.</span></div>
				<a href="<c:url value='/user/login' />"><div class="sub_btn01">로그인</div></a>
			</div>
		</div>
	</sec:authorize>
	<sec:authorize access="isAuthenticated()">
		<sec:authorize access="hasRole('ROLE_PARTNER')">
			<c:choose>
			    <c:when test="${not empty company}">
			        <!-- company 객체가 존재할 때 -->
			        <c:choose>
			    		<c:when test="${not empty partner}">
							<div class="company_overview_wrap">
								<div class="company_overview_box">
									<div class="company_overview_thum">
										<img src="<c:url value='${partner.companyFileList[1].file.filePath}' />" alt="${partner.companyFileList[1].file.originalName}" />
									</div>
									<div class="company_overview_cont">
										<div class="company_overview_name">
											${partner.companyDto.companyName}
											<c:choose>
												<c:when test="${partner.status eq 'pending'}">
													<span>승인 대기</span>
												</c:when>
												<c:when test="${partner.status eq 'approved'}">
													<span>승인</span>
												</c:when>
												<c:when test="${partner.status eq 'rejected'}">
													<span>반려</span>
												</c:when>
											</c:choose>
										</div>

										<ul>
											<li>
												<dl>
													<dt>대표자명</dt>
													<dd>${partner.companyDto.ceoName}</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>홈페이지</dt>
													<dd>
														<c:if test="${not empty partner.companyDto.homepage}">
															<a href="${partner.companyDto.homepage}" target="_blank">${partner.companyDto.homepage}</a>
														</c:if>
													</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>연락처</dt>
													<dd>${partner.companyDto.phone}</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>이메일</dt>
													<dd>${partner.companyDto.email}</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>지역</dt>
													<dd>${partner.companyDto.regionName}</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>주소</dt>
													<dd>[${partner.companyDto.zipcode}] ${partner.companyDto.address1} ${partner.companyDto.address2}</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>사업자등록증</dt>
													<dd>
														<a class="ahref_btns cursor" style="color: black;" href="<c:url value='/download?id=${partner.companyFileList[0].file.id}' />">
															<i class="fas fa-paperclip"></i> 
															<span class="fname">${partner.companyFileList[0].file.originalName}</span>
															<span class="fsize">(${partner.companyFileList[0].file.fileSizeNumber}
																<span class="fpilsu">${partner.companyFileList[0].file.fileSizeUnit}</span>)
															</span>
														</a>
													</dd>
												</dl>
											</li>
										</ul>
									</div>
								</div>

								<div class="company_overview_cont_memo">
									${partner.descriptionHtml}
								</div>
							</div>
							<div class="center mt30">
								<a href="<c:url value='/partner/${categoryNum}/edit' />"><div class="bbs_btn01">수정</div></a>
							</div>
						</c:when>
		    			<c:otherwise>
			    			<div class="center mt30">
			    				<a href="<c:url value='/partner/${categoryNum}/regist' />"><div class="bbs_btn01">신청</div></a>
		    				</div>
		    			</c:otherwise>
		    		</c:choose>
			    </c:when>
			    <c:otherwise>
			        <!-- company 객체가 없을 때 -->
			        <div class="center mt30">
				        <div class="error_box">
					        <i class="fas fa-exclamation-circle"></i>
							<div class="txt">등록된 회사 정보가 없습니다.<span>회사정보를 먼저 등록 후 파트너 신청이 가능합니다.</span></div>
							<a href="<c:url value='/user/company' />"><div class="bbs_btn01">회사정보 등록</div></a>
						</div>
					</div>
			    </c:otherwise>
			</c:choose>
    		
		</sec:authorize>
		<sec:authorize access="!hasRole('ROLE_PARTNER')">
			<div class="center mt30">
			    <div class="error_box">
					<i class="fas fa-exclamation-circle"></i>
					<div class="txt">일반회원은 사용할 수 없습니다.<span>파트너 계정으로 로그인 후 이용 가능합니다.</span></div>
				</div>
			</div>
		</sec:authorize>
	</sec:authorize>
	<%-- <a href="<c:url value='/partner/edit' />"><div class="bbs_btn01">재신청</div></a> --%>
	<!-- <a href="<c:url value='/partner/regist' />"><div class="bbs_btn01">신청</div></a> -->
	<!-- <a href="<c:url value='/partner/edit' />"><div class="bbs_btn01">수정</div></a> -->
</div>



	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script src="<c:url value='/resources/static/js/company.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>