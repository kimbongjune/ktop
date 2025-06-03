<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<link rel="stylesheet"
	href="<c:url value='/resources/static/css/company.css' />">

<section class="sub_container">
	<h6>서브 콘텐츠</h6>
	<div class="sub_category_box">

		<div class="lnb">
			<div class="web_size">
				<ul>
					<li class=""><a href="<c:url value='/user/mypage' />">회원정보관리</a></li>
					<li class=""><a href="<c:url value='/user/product' />">상품관리</a></li>
					<li class="on"><a href="<c:url value='/user/company' />">업체정보관리</a></li>
				</ul>
			</div>
		</div>

		<div class="web_size">
			<div class="sub_top">
				<h2>업체정보관리</h2>
				<ul class="location">
					<li class="home"><a href="<c:url value='/' />"></a></li>
					<li><a href="<c:url value='/user/mypage' />">MYPAGE</a></li>
					<li class=""><a href="<c:url value='/user/company' />">업체정보관리</a></li>
				</ul>
			</div>

			<div class="sub_cont">
				<h3 class="sub_title">MYPAGE</h3>
				<c:choose>
					<c:when test="${not empty company}">
						<!-- company 객체가 존재할 때 -->
						<div class="company_overview_wrap">
							<div class="company_overview_box">
								<div class="company_overview_thum">
									<img src="<c:url value='${company.companyFileList[1].file.filePath}' />" alt="${company.companyFileList[1].file.originalName}" />
								</div>
								<div class="company_overview_cont">
									<div class="company_overview_name">${company.companyName}</div>
									<ul>
										<li>
											<dl>
												<dt>대표자명</dt>
												<dd>${company.ceoName}</dd>
											</dl>
										</li>
										<li>
											<dl>
												<dt>홈페이지</dt>
												<dd>${company.homepage}</dd>
											</dl>
										</li>
										<li>
											<dl>
												<dt>연락처</dt>
												<dd>${company.phone}</dd>
											</dl>
										</li>
										<li>
											<dl>
												<dt>이메일</dt>
												<dd>${company.email}</dd>
											</dl>
										</li>
										<li>
											<dl>
												<dt>지역</dt>
												<dd>${company.regionName}</dd>
											</dl>
										</li>
										<li>
											<dl>
												<dt>주소</dt>
												<dd>${company.address1}${company.address2}</dd>
											</dl>
										</li>
										<li>
											<dl>
												<dt>사업자등록증</dt>
												<dd>
													<a class="cursor" style="color: black;" href="<c:url value='/download?id=${company.companyFileList[0].file.id}' />">
														<i class="fas fa-paperclip"></i> 
														<span class="fname">${company.companyFileList[0].file.originalName}</span>
														<span class="fsize">(${company.companyFileList[0].file.fileSizeNumber}
															<span class="fpilsu">${company.companyFileList[0].file.fileSizeUnit}</span>)
														</span>
													</a>
												</dd>
											</dl>
										</li>
									</ul>
								</div>
							</div>
							<div class="company_overview_cont_memo">${company.descriptionHtml}</div>
						</div>
						<div class="center mt30">
							<a href="<c:url value='/user/company/edit' />">
								<div class="bbs_btn01">수정</div>
							</a>
						</div>
					</c:when>
					<c:otherwise>
						<sec:authorize access="isAuthenticated()">
							<sec:authorize access="hasRole('ROLE_PARTNER')">
								<div class="center mt30">
									<%-- <a href="<c:url value='/user/company/edit' />"><div class="bbs_btn01">수정</div></a> --%>
									<div class="error_box">
										<i class="fas fa-exclamation-circle"></i>
										<div class="txt">
											등록된 회사 정보가 없습니다.<span>회사 정보를 등록해주세요</span>
										</div>
										<a href="<c:url value='/user/company/write' />">
											<div class="bbs_btn01">회사정보 등록</div>
										</a>
									</div>
								</div>
							</sec:authorize>
							<sec:authorize access="!hasRole('ROLE_PARTNER')">
								<div class="error_box">
									<i class="fas fa-exclamation-circle"></i>
									<div class="txt">
										일반회원은 사용할 수 없습니다.<span>파트너 계정으로 로그인 후 이용 가능합니다.</span>
									</div>
								</div>
							</sec:authorize>
						</sec:authorize>
						<sec:authorize access="isAnonymous()">
							<div class="error_box">
								<i class="fas fa-exclamation-circle"></i>
								<div class="txt">
									로그인 후 사용 가능합니다.<span>회원이시라면 로그인 후 이용하시기 바랍니다.</span>
								</div>
								<a href="<c:url value='/user/login' />">
									<div class="bbs_btn01">로그인</div>
								</a>
							</div>
						</sec:authorize>
					</c:otherwise>
				</c:choose>
			</div>
			<!-- web_size  -->
		</div>
		<!-- web_size  -->
	</div>
	<!-- web_size  -->
</section>
<script src="<c:url value='/resources/static/js/company.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>