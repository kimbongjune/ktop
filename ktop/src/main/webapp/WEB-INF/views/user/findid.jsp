<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

		<section class="sub_container"> 
		<h6>서브 콘텐츠</h6> 
			<div class="sub_category_box">  
		 
						
		<div class="web_size">  
							
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
						



	<div id="login_box">
		<div class="login_box_tit">아이디 찾기</div>
		<div class="login_box_txt">
			아이디가 기억나지 않으신가요? <br />아래의 등록정보를 입력해주세요.
		</div>
		<fieldset>
		<div class="field">
			<input type="text" id="id" name="user_name" title="성명" autofocus placeholder="성명" />
			<input type="text" id="email" name="user_hp" title="이메일" placeholder="이메일" />
		</div>
		<div class="btns"><input type="button" value="아이디 찾기" /></div>
		</fieldset>
	</div>



	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script>
	$('.btns input[type="button"]').on('click', function () {
	    const name = $('#id').val().trim();
	    const email = $('#email').val().trim();
	
	    // 빈값 검증
	    if (name === "") {
	        alert("성명을 입력하세요.");
	        $('#id').focus();
	        return;
	    }
	
	    if (email === "") {
	        alert("이메일을 입력하세요.");
	        $('#email').focus();
	        return;
	    }
	
	    axios.post("<c:url value='/user/findid' />", {
	        name: name,
	        email: email
	    })
	    .then(function (response) {
	        alert(response.data);
	    })
	    .catch(function (error) {
	        if (error.response && error.response.data) {
	            alert(error.response.data);
	        } else {
	            alert("요청 중 오류가 발생했습니다.");
	        }
	    });
	});
</script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>