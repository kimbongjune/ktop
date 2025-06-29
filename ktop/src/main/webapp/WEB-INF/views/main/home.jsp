<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="main_container">
	<section class="main_visual">
		<ul class="bxslider">
			<c:forEach var="banner" items="${mainBanners}">
				<c:if test="${banner.active}">
					<c:choose>
						<c:when test="${banner.mediaType == 'image'}">
							<li class="item" style="background: url('<c:url value='${banner.file.filePath}' />') no-repeat center 0; background-size: contain;" onclick="<c:if test='${not empty banner.linkUrl}'>window.open('${banner.linkUrl}');</c:if>"></li>
						</c:when>
						<c:otherwise>
							<li class="item" onclick="<c:if test='${not empty banner.linkUrl}'>window.open('${banner.linkUrl}');</c:if>">
								<video style="width: 100%; height: 100%; object-fit: cover;" autoplay muted loop>
									<source src="<c:url value='${banner.file.filePath}' />" type="video/mp4">
								</video>
							</li>
						</c:otherwise>
					</c:choose>
				</c:if>
			</c:forEach>
			<c:if test="${empty mainBanners}">
				<li class="item" style="background: url('<c:url value='/resources/static/image/1660028378_efcef7338de5286d9153caf8f4a903ae4cf29bc6.jpg' />') no-repeat center 0; background-size: contain;"></li>
			</c:if>
		</ul>
		<dl class="visual_txt">
			<div class="web_size">
				<p>건축자재 최저가 선언!</p>
				건축자재, 이제 가격을 비교해 보고 구입하세요
			</div>
		</dl>
	</section>

	<section class="cont01">
		<div class="web_size">
			<div class="main_search_wrap">
				<div class="main_search_tit">어떤 자재를 찾으시나요?</div>
<div class="main_search_box">
	<form method="get" name="search" action="<c:url value='/search' />" >
		<ul class="main_search_category">
		    <li class="select">
		        <input type="checkbox" id="region_all" class="area_checkbox" name="region" value="" checked />
		        <label for="region_all" class="area_label">전체</label>
		    </li>
		    <c:forEach var="region" items="${regionList}">
		        <li>
		            <input type="checkbox" id="region_${region.id}" class="area_checkbox" name="region" value="${region.id}" />
		            <label for="region_${region.id}" class="area_label">${region.name}</label>
		        </li>
		    </c:forEach>
		</ul>

		<div class="main_search_form_box"> 
			<div class="main_search_form_left">
				<select name="materialCategoryIdList" title="검색 옵션" class="main_search_select">
					<option value="">카테고리 전체</option> 
					<c:forEach var="material" items="${materialList}">
						<option value="${material.id}" >${material.name}</option>
					</c:forEach>
				</select>
			</div>
			<div class="main_search_form_center">
				<span class="input_clear_wrap">
					<input type="text" name="keyword" class="main_search_input" id="search" title="검색어" value="" placeholder="ex) 샌드위치판넬, 석고보드" />
					<i class="fas fa-times-circle" id="cleanSearch"></i>
				</span>
			</div>
			<div class="main_search_form_right"><input type="submit" class="main_search_btn  Fix_FormBtns" value="검색하기" /></div>
		</div>
	</form>
</div>
			</div>
		</div>
	</section>
 
	<section class="cont02">
		<div class="web_size">
		<div class="main_link">
			<ul class="middle_slickslider">
				<c:forEach var="banner" items="${middleBanners}">
					<c:if test="${banner.active}">
						<c:choose>
							<c:when test="${banner.mediaType == 'image'}">
								<li style="cursor:pointer;" onclick="<c:if test='${not empty banner.linkUrl}'>window.open('${banner.linkUrl}');</c:if>">
									<img src="<c:url value='${banner.file.filePath}' />" alt="${banner.title}" />
								</li>
							</c:when>
							<c:otherwise>
								<li style="cursor:pointer;" onclick="<c:if test='${not empty banner.linkUrl}'>window.open('${banner.linkUrl}');</c:if>">
									<video style="width: 100%; height: 100%; object-fit: cover;" autoplay muted loop>
										<source src="<c:url value='${banner.file.filePath}' />" type="video/mp4">
									</video>
								</li>
							</c:otherwise>
						</c:choose>
					</c:if>
				</c:forEach>
				<c:if test="${empty middleBanners}">
					<li style="cursor:pointer;" onclick="javascript:location.href='<c:url value='/' />'"><img src="<c:url value='/resources/static/image/1659596373_e29b841ad27033ab7d7a7dd2fc23b6c40f6f7860.jpg' />" alt="mm1" /></li>
					<li style="cursor:pointer;" onclick="javascript:location.href='<c:url value='/' />'"><img src="<c:url value='/resources/static/image/1659596390_cc2309e861529a9c0e02af2f37f0fe5ffff20b17.jpg' />" alt="mm2" /></li>
					<li style="cursor:pointer;" onclick="javascript:location.href='<c:url value='/' />'"><img src="<c:url value='/resources/static/image/1659596407_281a7cd46245b94a819bf352758ec19afc5a766e.jpg' />" alt="mm3" /></li>
					<li style="cursor:pointer;" onclick="javascript:location.href='<c:url value='/' />'"><img src="<c:url value='/resources/static/image/1659596420_ab3b2f73c74d18480529a4a06bc3fe270d70302d.jpg' />" alt="mm4" /></li>
					<li style="cursor:pointer;" onclick="javascript:location.href='<c:url value='/' />'"><img src="<c:url value='/resources/static/image/1659596479_0f4834546415c1f4a6efe7b18217ee7148d7189c.jpg' />" alt="mm5" /></li>
				</c:if>
			</ul>
			<div class="arrow">
				<p class="prev" id="middle_slick_prev_btn"><span></span></p>
				<p class="next" id="middle_slick_next_btn"><span></span></p>
			</div>
		</div>
		</div>
	</section>

	<section class="cont03"> 
		<div class="web_size">
			<p class="product_listbox_tit">NEW PRODUCT</p> 
			<div class="product_listbox">
				<ul>
					<c:forEach var="product" items="${newProducts}" varStatus="status">
						<c:if test="${status.index < 9}">
							<li>
								<a href="<c:url value='/material/${product.id}' />">
									<figure>
										<c:choose>
											<c:when test="${not empty product.materialFile and not empty product.materialFile.file}">
												<img src="<c:url value='${product.materialFile.file.filePath}' />" alt="${product.name}" />
											</c:when>
											<c:otherwise>
												<img src="<c:url value='/resources/static/image/10_d993e284b01d72f94ee687bde0a112bc.jpg' />" alt="${product.name}" />
											</c:otherwise>
										</c:choose>
									</figure>
									<dl>
										<dt>${product.name}</dt>
										<dd><span><fmt:formatNumber value="${product.price}" pattern="#,###" /></span>원</dd>
									</dl>
								</a>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>		
		</div>
	</section>


	<section class="cont04">
		<div class="web_size">
			<div class="main_people"> 
				<div class="main_people_tit">
					<div class="main_people_tit_txt">
						<span>믿을 수 있는&nbsp;</span>전문가
						<p>포트폴리오를 보고 나에게 딱 맞는<br />전문가를 만나보세요!</p>
					</div>
					<div class="main_people_tit_btn01"><a href="<c:url value='/workforce' />"><div class="main_people_tit_btn">더보기</div></a></div>
                </div>

				<div class="main_people_cont">
					<ul>
						<c:forEach var="expert" items="${experts}" varStatus="status">
							<c:if test="${status.index < 3}">
								<li> 
									<a href="<c:url value='/workforce/${expert.userId}' />">
										<div class="main_people_cont_thum">
											<c:choose>
												<c:when test="${not empty expert.workerFileList and fn:length(expert.workerFileList) > 0 and not empty expert.workerFileList[0].file}">
													<img src="<c:url value='${expert.workerFileList[0].file.filePath}'/>" alt="${expert.name}" />
												</c:when>
												<c:otherwise>
													<img src="<c:url value='/resources/static/image/4_2d8924abdbc7901b27c5a74098a40abec.jpg' />" alt="${expert.name}" />
												</c:otherwise>
											</c:choose>
										</div>
										<p>
											[<c:forEach var="field" items="${expert.fieldList}" varStatus="fieldStatus">${field.fieldName}<c:if test="${!fieldStatus.last}">, </c:if></c:forEach>] ${expert.name}
										</p>
									</a>
								</li>
							</c:if>
						</c:forEach>
					</ul>
				</div> 
				<div class="main_people_tit_btn02"><a href="<c:url value='/workforce' />"><div class="main_people_tit_btn">더보기</div></a> </div>
			</div> 
		</div>
	</section>

	<section class="cont05"> 
		<div class="web_size">
			<div class="cont05_left"> 
				<div class="main_notice ">
					
<!-- 탭 -->
<ul class="notice_tab">
		<li class="multiboard_tab on" id="multiboard_5"><a class="multiboard_change" data-mid="5" data-gc="NOTICE">공지사항</a></li>
	 
	<a href="<c:url value='/notice' />" class="multiboard_more more"></a>
</ul>
<!-- 탭 -->


<!-- 리스트 -->
<ul class="notice_item multiboard_content_5" >
	<c:forEach var="notice" items="${notices}" varStatus="status">
		<c:if test="${status.index < 4}">
			<li>
				<a href="<c:url value='/notice/${notice.id}' />">
					<dl>
						<dt>${notice.title}</dt>
						<dd>${fn:substring(notice.createdAt, 0, 10)}</dd>
					</dl>
				</a>
			</li>
		</c:if>
	</c:forEach>
</ul>
<!-- 리스트 -->
				</div>
			</div>

			<div class="cont05_center">
				<a href="<c:url value='/workforce/mine' />"> 
				<div class="main_people_bn">
					<div class="main_people_bn_tit">인력 POOL <span>등록</span> <p>새로운 클라이언트를 만나는 <br />가장 손쉬운 방법!</p></div>
					<div class="main_people_bn_btn">바로가기</div>
				</div>
				</a>
			</div>

			<div class="cont05_right">
				<div class="main_faq">
					<div class="main_faq_tit"><a href="<c:url value='/notice/faq' />">자주묻는 질문</a></div>
					<ul class="main_faq_cont">
						<c:forEach var="faq" items="${faqs}" varStatus="status">
							<c:if test="${status.index < 6}">
								<a href="<c:url value='/notice/faq#${faq.id}' />"><li>${faq.title}</li></a>
							</c:if>
						</c:forEach>
					</ul>
				</div> 
			</div> 
		</div> 
	</section>
 

	<section class="foot_bn">
		<div class="web_size">
			<ul class="bottom_slickslider">
				<c:forEach var="banner" items="${bottomBanners}">
					<c:if test="${banner.active}">
						<c:choose>
							<c:when test="${banner.mediaType == 'image'}">
								<li style="cursor:pointer;" onclick="<c:if test='${not empty banner.linkUrl}'>window.open('${banner.linkUrl}');</c:if>">
									<img src="<c:url value='${banner.file.filePath}' />" alt="${banner.title}" />
								</li>
							</c:when>
							<c:otherwise>
								<li style="cursor:pointer;" onclick="<c:if test='${not empty banner.linkUrl}'>window.open('${banner.linkUrl}');</c:if>">
									<video style="width: 100%; height: 100%; object-fit: cover;" autoplay muted loop>
										<source src="<c:url value='${banner.file.filePath}' />" type="video/mp4">
									</video>
								</li>
							</c:otherwise>
						</c:choose>
					</c:if>
				</c:forEach>
				<c:if test="${empty bottomBanners}">
					<li style="cursor:pointer;" onclick="javascript:window.open('https://uujj.co.kr/')"><img src="<c:url value='/resources/static/image/91_4ae4aa98549da64b395a1da5a5e8d54d.jpg' />" alt="완주군로컬잡센터" /></li>
					<li style="cursor:pointer;" onclick="javascript:window.open('http://kwca.or.kr/')"><img src="<c:url value='/resources/static/image/99_3e4efb7dff3237bce19af1349eb27a71.jpg' />" alt="한국목조건축협회" /></li>
					<li style="cursor:pointer;" onclick="javascript:window.open('http://www.phiko.kr/')"><img src="<c:url value='/resources/static/image/100_3f4cd2354ef6bf8781aee07cb4b8eb7a.jpg' />" alt="한국패시브협회" /></li>
					<li style="cursor:pointer;" onclick="javascript:window.open('https://www.greendongwha.com/')"><img src="<c:url value='/resources/static/image/101_06282a19a2f989917ac497690986ede9.jpg' />" alt="동화자연마루" /></li>
					<li style="cursor:pointer;" onclick="javascript:window.open('http://kwca.or.kr/')"><img src="<c:url value='/resources/static/image/102_020fd1226c2b0216b32b0350bff1ee85.jpg' />" alt="대한목조건축협회" /></li>
					<li style="cursor:pointer;" onclick="javascript:window.open('https://www.jeonbuk.go.kr/')"><img src="<c:url value='/resources/static/image/102_020fd1226c2b0216b32b0350bff1ee85.jpg' />" alt="전라북도" /></li>
				</c:if>
			</ul>
			<div class="arrow">
				<p class="prev" id="bottom_slick_prev_btn"><span></span></p>
				<p class="next" id="bottom_slick_next_btn"><span></span></p>
			</div>
		</div>
	</section>
</div>
<script>
	$("#cleanSearch").click(function () {
	    $(this).css("visibility", "hidden");
	    $("#search").val("");
	});
</script>
<link rel="stylesheet" href="<c:url value='/resources/static/css/bxslider.css' />" >
<link rel="stylesheet" href="<c:url value='/resources/static/css/slickslider.css' />" >
<script src="<c:url value='/resources/static/js/bxslider.js' />"></script>
<script src="<c:url value='/resources/static/js/slickslider.js' />"></script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>