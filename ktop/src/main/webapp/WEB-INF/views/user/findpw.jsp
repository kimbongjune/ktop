<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

		<section class="sub_container"> 
		<h6>서브 콘텐츠</h6> 
			<div class="sub_category_box">  
		 
						
		<div class="web_size">  
							
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
						
	<div id="login_box">
		<div class="login_box_tit">비밀번호 찾기</div>
		<div class="login_box_txt">
			비밀번호가 기억나지 않으신가요?<br />STEP1. 아래의 등록정보를 입력해주세요.
		</div>
		<fieldset>
		<div class="field">
			<input type="text" id="id" name="id" class="" title="아이디" autofocus placeholder="아이디" />
			<input type="text" id="name" name="name" class="" title="성명" placeholder="성명" />
			<input type="text" id="email" name="email" class="" title="이메일"  placeholder="이메일" />
		</div>
		<div class="btns"><input type="button" value="비밀번호 찾기" /></div>
		</fieldset>
	</div>



	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script>
	$(".btns input[type='button']").click(function () {
	    const id = $("#id").val().trim();
	    const name = $("#name").val().trim();
	    const email = $("#email").val().trim();
	
	    if (!id) {
	        alert("아이디를 입력해주세요.");
	        return;
	    }
	    if (!name) {
	        alert("이름을 입력해주세요.");
	        return;
	    }
	    if (!email) {
	        alert("이메일을 입력해주세요.");
	        return;
	    }
	
	    axios.post("<c:url value='/user/findpw' />", {
	        id: id,
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
	            alert("오류가 발생했습니다.");
	        }
	    });
	});
</script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>