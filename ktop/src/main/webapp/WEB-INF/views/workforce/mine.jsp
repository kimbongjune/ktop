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
												<li class=""><a href="<c:url value='/workforce' />" >인력 POOL</a></li>
												<li class="on"><a href="<c:url value='/workforce/mine' />" >인력 POOL 안내/등록</a></li>
											</ul>
				</div>
			</div>
			
		<div class="web_size">  
					<div class="sub_top">  
				<h2>인력 POOL 안내/등록</h2>
				<ul class="location">
											<li class="home"><a href="<c:url value='/' />"></a></li>
											<li><a href="<c:url value='/workforce' />" >인력</a></li>
											<li><a href="<c:url value='/workforce/mine' />" >인력 POOL 안내/등록</a></li>
														</ul>
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">인력</h3>

<h4>신청 내역</h4>
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
	<c:choose>
		<c:when test="${empty worker}">
			<div class="center mt30">
		        <div class="center mt30">
					<a href="<c:url value='/workforce/regist' />"><div class="bbs_btn01">인력 Pool 등록</div></a>			
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<table width="100%" class="gtable">
				<colgroup>
					<col style="width:15%;" />
					<col style="width:35%;" />
					<col style="width:15%;" />
					<col />
				</colgroup>
				<tbody>
				<tr>
					<th>이름</th>
					<td class="left">멋쟁이목수</td>
					<th>연락처</th>
					<td class="left">010-2594-0104</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td class="left">sonoran@nate.com</td>
					<th>활동분야</th>
					<td class="left">목수</td>
				</tr>
				<tr>
					<th>소개</th>
					<td colspan="3">멋쟁이 인테리어 목수팀이 일을 잘합니다.</td>
				</tr>
				<tr>
					<th>대표이미지</th>
					<td colspan="3">
						<div class="ahref_btns cursor" data-href="http://localhost:3000/main/?gc=645FAEH/download&file_id=2295"><i class="fas fa-paperclip"></i> <span class="fname">main_people03.jpg</span> <span class="fsize">(39.9 <span class="fpilsu">KB</span>)</span></div>
					</td>
				</tr>
				<tr>
					<th>포트폴리오</th>
					<td colspan="3">
						<div class="ahref_btns cursor" data-href="http://localhost:3000/main/?gc=645FAEH/download&file_id=2296"><i class="fas fa-paperclip"></i> <span class="fname">8eac171a649fa50a8b2e427945b5f47b.jpg</span> <span class="fsize">(90.5 <span class="fpilsu">KB</span>)</span></div>
					</td>
				</tr>
				<tr>
					<th>신청상황</th>
					<td colspan="3">
						승인	</td>
				</tr>
				</tbody>
			</table>
			<div class="center mt30">
				<a href="<c:url value='/workforce/edit' />"><div class="bbs_btn01">인력 Pool 수정</div></a>			
			</div>
		</c:otherwise>
	</c:choose>
</sec:authorize>


<!-- <div class="error_box">
<i class="fas fa-exclamation-circle"></i>
		<div class="txt">로그인 후 사용 가능합니다.<span>회원이시라면 로그인 후 이용하시기 바랍니다.</span></div>
	<a href="<c:url value='/user/login' />"><div class="sub_btn01">로그인</div></a>
</div> -->

	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script src="<c:url value='/resources/static/js/person.js' />"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>