<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

		<section class="sub_container"> 
		<h6>서브 콘텐츠</h6> 
			<div class="sub_category_box">  
		 
						
		<div class="web_size">  
							
			<div class="sub_cont"> 
<form name="login_form" method="post" action="<c:url value='/login' />" onsubmit="return login_form_submit();">
<div id="login_box" >
	<div class="logo"><img src="<c:url value='/resources/static/image/top_logo.png' />" alt="건축자재포털" /></div>
	<div class="field">
		<input type="text" id="username" name="username" class="alnum_" title="아이디" autofocus placeholder="아이디" />
		<input type="password" id="password" name="password" class=""  title="비밀번호" placeholder="비밀번호" />
		<i class="fas fa-eye-slash" title="비밀번호 보기"></i>
	</div>

	
	<div class="btns"><input type="submit" value="로그인" /></div>
		<ul class="bottom"> 
		<li><a href="<c:url value='/user/findid' />">아이디찾기</a></li>
		<li><a href="<c:url value='/user/findpw' />">비밀번호찾기</a></li>
		<li><a href="<c:url value='/user/signup' />">회원가입</a></li>
	</ul>
	
	</div>
</form>


	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>