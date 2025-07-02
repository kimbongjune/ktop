<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

		<section class="sub_container"> 
		<h6>서브 콘텐츠</h6> 
			<div class="sub_category_box">  
		 
									<div class="lnb">
				<div class="web_size">  
					<ul>	
												<li class="on"><a href="<c:url value='/user/mypage' />" >회원정보관리</a></li>
												<li class=""><a href="<c:url value='/user/product' />" >상품관리</a></li>
												<li class=""><a href="<c:url value='/user/company' />" >업체정보관리</a></li>
											</ul>
				</div>
			</div>
			
		<div class="web_size">  
					<div class="sub_top">  
				<h2>회원정보관리</h2>
				<ul class="location">
											<li class="home"><a href="<c:url value='/' />"></a></li>
											<li><a href="<c:url value='/user/mypage' />" >MYPAGE</a></li>
											<li><a href="<c:url value='/user/mypage' />" >회원정보관리</a></li>
														</ul>
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">MYPAGE</h3>
						<div class="register_box_size01">
<div id="register_box">

	<form name="register_check" method="post" action="#" onsubmit="return register_check_submit();">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	<input type="hidden" name="gc" value="MC" />
	<input type="hidden" name="do" value="form" />


	<p class="tit1">비밀번호 재확인</p>

	<section>

		<p class="txt">정보를 안전하게 보호하기 위해 비밀번호를 다시 한 번 확인합니다.</p>
		<fieldset class="input_info">
			<dl>
				<dt><label for="user_id">아이디</label> <span class="fpilsu">*</span></dt>
				<dd>
					<input type="text" id="user_id" name="user_id" title="아이디" readonly value="admin" />
				</dd>
			</dl>
			<dl>
				<dt><label for="user_passwd">비밀번호</label> <span class="fpilsu">*</span></dt>
				<dd>
					<input type="password" id="user_passwd" name="user_passwd" class="required" minlength="6" maxlength="16" title="비밀번호" placeholder="비밀번호 6~16글자" />
				</dd>
			</dl>
		</fieldset>

		<div class="pt20 center">
			<input type="submit" class="login_btn01" value="확인" />
		</div>
		
	</section>

	</form>
</div>
</div>

	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script>
$('form[name="register_check"]').on('submit', function(e) {
	const password = $('#user_passwd').val().trim();
	
	if (password === "") {
		alert("비밀번호를 입력해 주세요.");
		$('#user_passwd').focus();
		e.preventDefault();
		return false;
	}
	
	if (password.length < 6 || password.length > 16) {
		alert("비밀번호는 6~16자로 입력해 주세요.");
		$('#user_passwd').focus();
		e.preventDefault();
		return false;
	}
	
	return true;
});
</script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>