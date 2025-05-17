<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link rel="stylesheet" href="<c:url value='/resources/static/css/person.css' />">

		<section class="sub_container"> 
		<h6>서브 콘텐츠</h6> 
			<div class="sub_category_box">  
		 
									<div class="lnb">
				<div class="web_size">  
					<ul>	
												<li class="on"><a href="<c:url value='/workforce' />" >인력 POOL</a></li>
												<li class=""><a href="<c:url value='/workforce/mine' />" >인력 POOL 안내/등록</a></li>
											</ul>
				</div>
			</div>
			
		<div class="web_size">  
					<div class="sub_top">  
				<h2>인력 POOL</h2>
				<ul class="location">
											<li class="home"><a href="<c:url value='/' />"></a></li>
											<li><a href="<c:url value='/workforce' />" >인력</a></li>
											<li><a href="<c:url value='/workforce' />" >인력 POOL</a></li>
														</ul>
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">인력</h3>
						 

<div class="person_list_top_box_wrap"> 
			<ul class="tabmenu04">
				<li class="on"><a class="pgroup_select pgroup_all " data-ccode="" data-gc="644IMSJ" data-agroup="">전체</a></li>
							<li class=""><a class="pgroup_select" data-ccode="3" data-gc="644IMSJ" data-agroup="">목수</a></li>
							<li class=""><a class="pgroup_select" data-ccode="4" data-gc="644IMSJ" data-agroup="">철거</a></li>
							<li class=""><a class="pgroup_select" data-ccode="5" data-gc="644IMSJ" data-agroup="">설비</a></li>
							<li class=""><a class="pgroup_select" data-ccode="6" data-gc="644IMSJ" data-agroup="">전기</a></li>
							<li class=""><a class="pgroup_select" data-ccode="7" data-gc="644IMSJ" data-agroup="">도장</a></li>
							<li class=""><a class="pgroup_select" data-ccode="8" data-gc="644IMSJ" data-agroup="">미장</a></li>
							<li class=""><a class="pgroup_select" data-ccode="9" data-gc="644IMSJ" data-agroup="">조적</a></li>
							<li class=""><a class="pgroup_select" data-ccode="10" data-gc="644IMSJ" data-agroup="">도배</a></li>
							<li class=""><a class="pgroup_select" data-ccode="11" data-gc="644IMSJ" data-agroup="">장판</a></li>
							<li class=""><a class="pgroup_select" data-ccode="12" data-gc="644IMSJ" data-agroup="">타일</a></li>
							<li class=""><a class="pgroup_select" data-ccode="13" data-gc="644IMSJ" data-agroup="">필름</a></li>
						</ul>

	<div class="person_list_top_box">
		<div class="person_list_top_left">지역선택</div>
		<div class="person_list_top_right">
			<ul>
				<li class="person_area_select person_area_all cursor on" data-ccode="" data-gc="644IMSJ" data-spgroup="">전국</li>
						<li class="person_area_select cursor " data-ccode="1/" data-gc="644IMSJ" data-spgroup="">서울</li>
						<li class="person_area_select cursor " data-ccode="2/" data-gc="644IMSJ" data-spgroup="">부산</li>
						<li class="person_area_select cursor " data-ccode="3/" data-gc="644IMSJ" data-spgroup="">인천</li>
						<li class="person_area_select cursor " data-ccode="4/" data-gc="644IMSJ" data-spgroup="">대구</li>
						<li class="person_area_select cursor " data-ccode="5/" data-gc="644IMSJ" data-spgroup="">광주</li>
						<li class="person_area_select cursor " data-ccode="6/" data-gc="644IMSJ" data-spgroup="">대전</li>
						<li class="person_area_select cursor " data-ccode="7/" data-gc="644IMSJ" data-spgroup="">울산</li>
						<li class="person_area_select cursor " data-ccode="8/" data-gc="644IMSJ" data-spgroup="">경기</li>
						<li class="person_area_select cursor " data-ccode="9/" data-gc="644IMSJ" data-spgroup="">강원</li>
						<li class="person_area_select cursor " data-ccode="10/" data-gc="644IMSJ" data-spgroup="">충남</li>
						<li class="person_area_select cursor " data-ccode="11/" data-gc="644IMSJ" data-spgroup="">충북</li>
						<li class="person_area_select cursor " data-ccode="12/" data-gc="644IMSJ" data-spgroup="">경남</li>
						<li class="person_area_select cursor " data-ccode="13/" data-gc="644IMSJ" data-spgroup="">경북</li>
						<li class="person_area_select cursor " data-ccode="14/" data-gc="644IMSJ" data-spgroup="">전남</li>
						<li class="person_area_select cursor " data-ccode="15/" data-gc="644IMSJ" data-spgroup="">전북</li>
						<li class="person_area_select cursor " data-ccode="16/" data-gc="644IMSJ" data-spgroup="">제주</li>
					</ul>
		</div>
		</div>
</div>
 

<div class="person_listbox">
	<ul>
			<li>
			<a href="<c:url value='/workforce/1' />">
			<figure><img src="<c:url value="/resources/static/image/1660119157_9cbcdc16f9b465f321e1b0b1ab3e27c71dbd1589.jpg"/>" alt="asdf" /></figure>
						<div class="star"><div class="review_star"><div class="review_fill" style="width:50%;" title="2.5">&nbsp;</div></div></div>
						<div class="subject">[목수, 철거, 미장, 조적] <p>asdf</p></div>
			</a>
		</li>
			<li>
			<a href="<c:url value='/workforce/2' />">
			<figure><img src="<c:url value="/resources/static/image/3_34263ccb7f1cf298aa9bc1d88457782a.jpg"/>" alt="홍길동" /></figure>
						<div class="star"><div class="review_star"><div class="review_fill" style="width:100%;" title="5">&nbsp;</div></div></div>
						<div class="subject">[목수, 철거, 설비, 도장, 조적] <p>홍길동</p></div>
			</a>
		</li>
			<li>
			<a href="<c:url value='/workforce/3' />">
			<figure><img src="<c:url value="/resources/static/image/4_2d8924abdbc7901b27c5a74098a40abe.jpg"/>" alt="멋쟁이목수" /></figure>
						<div class="subject">[목수] <p>멋쟁이목수</p></div>
			</a>
		</li>
		</ul>
		<!-- <div class="personlist_nolist">자료가 없습니다.</div> -->
	</div>		



	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script src="<c:url value='/resources/static/js/person.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>