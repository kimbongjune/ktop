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
		<li class="${empty fieldId ? 'on' : ''}">
			<a class="pgroup_select" href="<c:url value='/workforce'>
				<c:if test='${not empty param.regionId}'>
					<c:param name='regionId' value='${param.regionId}'/>
				</c:if>
			</c:url>">전체</a>
		</li>
		
		<c:forEach var="workField" items="${workFieldList}">
			<c:choose>
				<c:when test="${fieldId eq workField.id}">
					<li class="on">
						<a class="pgroup_select" href="<c:url value='/workforce'>
							<c:param name='fieldId' value='${workField.id}'/>
							<c:if test='${not empty param.regionId}'>
								<c:param name='regionId' value='${param.regionId}'/>
							</c:if>
						</c:url>">${workField.name}</a>
					</li>
				</c:when>
				<c:otherwise>
					<li>
						<a class="pgroup_select" href="<c:url value='/workforce'>
							<c:param name='fieldId' value='${workField.id}'/>
							<c:if test='${not empty param.regionId}'>
								<c:param name='regionId' value='${param.regionId}'/>
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
				<li class="person_area_select cursor ${empty regionId ? 'on' : ''}">
					<a href="<c:url value='/workforce'>
						<c:if test='${not empty param.fieldId}'>
							<c:param name='fieldId' value='${param.fieldId}'/>
						</c:if>
					</c:url>">전국</a>
				</li>
				
				<c:forEach var="region" items="${regionList}">
					<li class="person_area_select cursor ${param.regionId eq region.id ? 'on' : ''}">
						<a href="<c:url value='/workforce'>
							<c:if test='${not empty param.fieldId}'>
								<c:param name='fieldId' value='${param.fieldId}'/>
							</c:if>
							<c:param name='regionId' value='${region.id}'/>
						</c:url>">${region.name}</a>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>

<div class="person_listbox">
	<c:if test="${empty workers}">
		<div class="personlist_nolist">조회 결과가 없습니다.</div>
	</c:if>
	<ul>
		<c:forEach var="worker" items="${workers}">
			<li>
				<a href="<c:url value='/workforce/${worker.userId}' />">
					<figure>
						<img src="<c:url value="${worker.workerFileList[0].file.filePath}"/>" alt="${worker.workerFileList[0].file.originalName}" />
					</figure>
					<div class="subject">
						[
							<c:forEach var="field" items="${worker.fieldList}" varStatus="status">
								${field.fieldName}<c:if test="${!status.last}">, </c:if>
							</c:forEach>
						]
						<p>${worker.name}</p>
					</div>
				</a>
			</li>
		</c:forEach>
	</ul>
		<!-- <div class="personlist_nolist">자료가 없습니다.</div> -->
</div>		

<!-- 페이징 -->
<%@ include file="/WEB-INF/views/common/pagination.jsp" %>



	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script src="<c:url value='/resources/static/js/person.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>