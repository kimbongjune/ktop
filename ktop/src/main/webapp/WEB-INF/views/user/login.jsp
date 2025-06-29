<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

		<section class="sub_container"> 
		<h6>서브 콘텐츠</h6> 
			<div class="sub_category_box">  
		 
						
		<div class="web_size">  
							
			<div class="sub_cont"> 
<form name="login_form" method="post" action="<c:url value='/login' />" onsubmit="return login_form_submit();">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
<div id="login_box" >
	<div class="logo"><img src="<c:url value='/resources/static/image/top_logo.png' />" alt="건축자재포털" /></div>
	
	<!-- 메시지 표시 영역 -->
	<c:if test="${param.error == 'true'}">
		<div class="alert alert-error" style="color: #d32f2f; background-color: #ffebee; padding: 10px; margin: 10px 0; border-radius: 4px; border: 1px solid #ffcdd2;">
			아이디 또는 비밀번호가 일치하지 않습니다.
		</div>
	</c:if>
	<c:if test="${param.session == 'invalid'}">
		<div class="alert alert-warning" style="color: #f57c00; background-color: #fff3e0; padding: 10px; margin: 10px 0; border-radius: 4px; border: 1px solid #ffcc02;">
			다른 곳에서 로그인하여 세션이 만료되었습니다. 다시 로그인해주세요.
		</div>
	</c:if>
	<c:if test="${param.logout == 'true'}">
		<div class="alert alert-success" style="color: #388e3c; background-color: #e8f5e8; padding: 10px; margin: 10px 0; border-radius: 4px; border: 1px solid #c8e6c9;">
			로그아웃되었습니다.
		</div>
	</c:if>
	<c:if test="${param.expired == 'true'}">
		<div class="alert alert-warning" style="color: #f57c00; background-color: #fff3e0; padding: 10px; margin: 10px 0; border-radius: 4px; border: 1px solid #ffcc02;">
			세션이 만료되었습니다. 다시 로그인해주세요.
		</div>
	</c:if>
	
	<div class="field">
		<input type="text" id="username" name="username" class="alnum_" title="아이디" autofocus placeholder="아이디" />
		<input type="password" id="password" name="password" class=""  title="비밀번호" placeholder="비밀번호" />
		<i class="fas fa-eye-slash" title="비밀번호 보기"></i>
	</div>
	<div class="btns"><input type="submit" value="로그인" /></div>
	<div class="auto_login">
	    <input type="checkbox" name="remember-me" id="rememberMe"/>
	    <label for="rememberMe">자동 로그인</label>
	</div>
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