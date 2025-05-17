<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

		<section class="sub_container"> 
		<h6>서브 콘텐츠</h6> 
			<div class="sub_category_box">  
		 
						
		<div class="web_size">  
							
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
						


	<form name="idsearch_form" method="post" action="#" onsubmit="return idsearch_form_submit();">
	<input type="hidden" name="gc" value="MA" />
	<input type="hidden" name="do" value="idsearch" />
	<input type="hidden" name="user_idinfo" id="user_idinfo" />

	<div id="login_box">
		<div class="login_box_tit">아이디 찾기</div>
		<div class="login_box_txt">
			아이디가 기억나지 않으신가요? <br />아래의 등록정보를 입력해주세요.
		</div>
		<fieldset>
		<div class="field">
			<input type="text" id="user_name" name="user_name" class="required" maxlength="20" title="성명" autofocus placeholder="성명" />
			<input type="tel" id="user_hp" name="user_hp" class="hpnum required hypenauto" title="휴대폰번호" minlength="12" maxlength="13" placeholder="휴대폰번호(숫자만 입력)" />
		</div>
		<div class="btns"><input type="submit" value="아이디 찾기" /></div>
		</fieldset>
	</div>
	</form>



	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>