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
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">인력</h3>
						 

<div class="person_list_top_box_wrap"> 
	<ul class="tabmenu04">
		<li class="${empty cat ? 'on' : ''}">
			<a class="pgroup_select" href="<c:url value='/workforce'>
				<c:if test='${not empty param.region}'>
					<c:param name='region' value='${param.region}'/>
				</c:if>
			</c:url>">전체</a>
		</li>
		
		<c:forEach var="workField" items="${workFieldList}">
			<c:choose>
				<c:when test="${cat eq workField.id}">
					<li class="on">
						<a class="pgroup_select" href="<c:url value='/workforce'>
							<c:param name='cat' value='${workField.id}'/>
							<c:if test='${not empty param.region}'>
								<c:param name='region' value='${param.region}'/>
							</c:if>
						</c:url>">${workField.name}</a>
					</li>
				</c:when>
				<c:otherwise>
					<li>
						<a class="pgroup_select" href="<c:url value='/workforce'>
							<c:param name='cat' value='${workField.id}'/>
							<c:if test='${not empty param.region}'>
								<c:param name='region' value='${param.region}'/>
							</c:if>
						</c:url>">${workField.name}</a>
					</li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</ul>

	<div class="person_list_top_box">
		<div class="person_list_top_left">지역선택</div>
		<div class="person_list_top_right">
			<ul>
				<li class="person_area_select cursor ${empty region ? 'on' : ''}">
					<a href="<c:url value='/workforce'>
						<c:if test='${not empty param.cat}'>
							<c:param name='cat' value='${param.cat}'/>
						</c:if>
					</c:url>">전국</a>
				</li>
				
				<c:forEach var="region" items="${regionList}">
					<li class="person_area_select cursor ${param.region eq region.id ? 'on' : ''}">
						<a href="<c:url value='/workforce'>
							<c:if test='${not empty param.cat}'>
								<c:param name='cat' value='${param.cat}'/>
							</c:if>
							<c:param name='region' value='${region.id}'/>
						</c:url>">${region.name}</a>
					</li>
				</c:forEach>
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