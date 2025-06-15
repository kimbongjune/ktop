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
												<sec:authorize access="hasRole('ROLE_PARTNER')">
													<li class=""><a href="<c:url value='/user/company' />" >업체정보관리</a></li>
												</sec:authorize>
											</ul>
				</div>
			</div>
			
		<div class="web_size">  
					<div class="sub_top">  
				<h2>회원정보관리</h2>
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">MYPAGE</h3>
 <div class="register_box_size02">
	<div id="register_box">

		<form name="register_form" method="post" action="" onsubmit="return formSubmit();">

			<p class="tit1">회원가입</p>


			<p class="tit2">회원 구분 선택</p>
			<ul class="tabs tabauto" id="user_type">
				<li class="<c:if test="${user.role eq 1}">on</c:if>" data-type="ROLE_USER"><div>일반</div></li>
				<li class="<c:if test="${user.role eq 2}">on</c:if>" data-type="ROLE_PARTNER"><div>협력사</div></li>
			</ul>
			<fieldset class="input_info">
				<dl>
					<dt>
						<label for="id">아이디</label> <span class="fpilsu">*</span>
					</dt>
					<dd>
						<input type="text" id="id" name="id" class="alnum_ idcheck" minlength="6" maxlength="16" title="아이디" disabled placeholder="아이디 6~16글자 (영문 또는 숫자)" value="${user.id}" />
						<i class="fas fa-check fa-lg fsky idcheck_1" id="id_check_success" title="사용가능 아이디" style="display: none;"></i>
						<i class="fas fa-times fa-lg fred idcheck_" title="사용중인 아이디" id="id_check_fail" style="display: none;"></i>
						<div class="guide-text" id="id_guide_text">※ 6~16자 영문 또는 숫자만 입력하세요.</div>
					</dd>
				</dl>
				<dl>
					<dt>
						<label for="password">비밀번호</label> <span class="fpilsu">*</span>
					</dt>
					<dd>
						<input type="password" id="password" name="password" class="pwcheck" data-target="user_passwd_re" title="비밀번호" placeholder="비밀번호 6~16글자" /> <i class="fas fa-eye-slash" title="비밀번호 보기"></i> <i class="fas fa-check fa-lg fsky pwcheck_0" title="비밀번호 완성" style="display: none;"></i> <i class="fas fa-check fa-lg fsky idcheck_1" id="pw_check_success" style="display: none; right: 35px;"></i> <i class="fas fa-times fa-lg fred idcheck_" id="pw_check_fail" style="display: none; right: 35px;"></i>
						<div class="guide-text" id="pw_guide_text">※ 6~16자 영문 또는 숫자만 입력하세요.</div>
					</dd>
				</dl>
				<dl>
					<dt>
						<label for="user_passwd_re">비밀번호 확인</label> <span class="fpilsu">*</span>
					</dt>
					<dd>
						<input type="password" id="user_passwd_re" name="user_passwd_re" class="pwcheck pwrecheck " data-target="user_passwd" title="비밀번호 확인" placeholder="비밀번호 확인" /> <i class="fas fa-eye-slash" title="비밀번호 보기"></i> <i class="fas fa-check fa-lg fsky pwcheck_1" title="비밀번호 완성" style="display: none;"></i> <i class="fas fa-check fa-lg fsky idcheck_1" id="pw_re_check_success" style="display: none; right: 35px;"></i> <i class="fas fa-times fa-lg fred idcheck_" id="pw_re_check_fail" style="display: none; right: 35px;"></i>
						<div class="guide-text" id="pw_re_guide_text">※ 6~16자 영문 또는 숫자만 입력하세요.</div>
					</dd>
				</dl>
			</fieldset>

			<!-- 회원 정보 -->
			<fieldset class="input_info">
				<dl>
					<dt>
						<label for="name">이름</label> <span class="fpilsu">*</span>
					</dt>
					<dd>
						<input type="text" id="name" name="name" class="" title="이름" value="${user.name}" disabled maxlength="20" placeholder="실명 기입" /> <i class="fas fa-check fa-lg fsky idcheck_1" id="name_check_success" title="사용가능 아이디" style="display: none;"></i> <i class="fas fa-times fa-lg fred idcheck_" title="사용중인 아이디" id="name_check_fail" style="display: none;"></i>
						<div class="guide-text" id="name_guide_text">※ 6~16자 영문 또는 숫자만 입력하세요.</div>
					</dd>
				</dl>

				<dl>
					<dt>
						<label for="nickName">닉네임</label> <span class="fpilsu">*</span>
					</dt>
					<dd>
						<input type="text" id="nickName" name="nickName" class="" title="닉네임" value="${user.nickName}" maxlength="20" placeholder="닉네임" /> <i class="fas fa-check fa-lg fsky idcheck_1" id="nick_check_success" title="사용가능 아이디" style="display: none;"></i> <i class="fas fa-times fa-lg fred idcheck_" title="사용중인 아이디" id="nick_check_fail" style="display: none;"></i>
						<div class="guide-text" id="nick_guide_text">※ 6~16자 영문 또는 숫자만 입력하세요.</div>
					</dd>
				</dl>
				<dl>
					<dt>
						<label for="phoneMobile">휴대폰 번호</label> <span class="fpilsu">*</span>
					</dt>
					<dd>
						<input type="tel" id="phoneMobile" name="phoneMobile" class=" hypenauto" title="휴대폰번호" value="${user.phoneMobile}" minlength="12" maxlength="13" placeholder="숫자만 입력" /> <i class="fas fa-check fa-lg fsky idcheck_1" id="mobile_check_success" title="사용가능 아이디" style="display: none;"></i> <i class="fas fa-times fa-lg fred idcheck_" title="사용중인 아이디" id="mobile_check_fail" style="display: none;"></i>
						<div class="guide-text" id="mobile_guide_text">※ 6~16자 영문 또는 숫자만 입력하세요.</div>
					</dd>
				</dl>
				<dl>
					<dt>
						<label for="phoneHome">전화 번호</label>
					</dt>
					<dd>
						<input type="tel" id="phoneHome" name="phoneHome" class="telnum hypenauto" title="전화번호" value="${user.phoneHome}" minlength="9" maxlength="13" placeholder="숫자만 입력" /> <i class="fas fa-check fa-lg fsky idcheck_1" id="home_check_success" title="사용가능 아이디" style="display: none;"></i> <i class="fas fa-times fa-lg fred idcheck_" title="사용중인 아이디" id="home_check_fail" style="display: none;"></i>
						<div class="guide-text" id="home_guide_text">※ 6~16자 영문 또는 숫자만 입력하세요.</div>
					</dd>
				</dl>
				<dl>
					<dt>
						<label for="email">이메일</label> <span class="fpilsu">*</span>
					</dt>
					<dd>
						<input type="email" id="email" name="email" class="" title="이메일" value="${user.email}" maxlength="100" placeholder="이메일 입력" /> <input type="button" id="btn_email" class="ab_m ab_h " name="btn_email" title="이메일검증" value="이메일 검증" maxlength="100" placeholder="이메일 입력" /> <i class="fas fa-check fa-lg fsky idcheck_1" id="email_check_success" title="사용가능 아이디" style="display: none; top: 32px; right: 130px;"></i> <i class="fas fa-times fa-lg fred idcheck_" title="사용중인 아이디" id="email_check_fail" style="display: none; top: 32px; right: 130px;"></i>
						<div class="guide-text" id="email_guide_text">※ 6~16자 영문 또는 숫자만 입력하세요.</div>
					</dd>

					<dt>
						<label for="email_val">이메일 인증번호</label> <span class="fpilsu">*</span>
					</dt>
					<dd>
						<input type="text" id="email_val" name="email_val" class="" title="이메일 인증" value="" maxlength="100" placeholder="이메일 인증" /> <i class="fas fa-check fa-lg fsky idcheck_1" id="email_val_check_success" title="사용가능 아이디" style="display: none;"></i> <i class="fas fa-times fa-lg fred idcheck_" title="사용중인 아이디" id="email_val_check_fail" style="display: none;"></i>
						<div class="guide-text" id="email_val_guide_text">※ 6~16자 영문 또는 숫자만 입력하세요.</div>
					</dd>
				</dl>
			</fieldset>

			<!-- 비밀번호찾기 정보 -->
			<fieldset class="input_info">
				<dl>
					<dt>
						<label for="question1Id">비밀번호 찾기 질문 1</label> <span class="fpilsu">*</span>
						<p class="txt02">비빌번호 분실 시 비빌번호를 재등록할 때 사용하는 질문과 답변입니다.</p>
					</dt>
					<dd>
						<select id="question1Id" name="question1Id" class="" title="질문1">
							<option value="">:선택:</option>
							<c:forEach var="question" items="${questionList}">
								<option <c:if test="${question.id eq user.question1Id}">selected</c:if> value="${question.id}">${question.question}</option>
							</c:forEach>
						</select>
						<i class="fas fa-check fa-lg fsky idcheck_1" id="q1_check_success" title="사용가능 아이디" style="display: none;"></i> <i class="fas fa-times fa-lg fred idcheck_" title="사용중인 아이디" id="q1_check_fail" style="display: none;"></i>
						<div class="guide-text" id="q1_guide_text">※ 6~16자 영문 또는 숫자만 입력하세요.</div>
					</dd>
				</dl>
				<dl> 
					<dt><label for="answer1">비밀번호 찾기 답변 1</label> <span class="fpilsu">*</span></dt>
					<dd>
						<input type="text" id="answer1" name="answer1" class="required" title="답변1" value="${user.answer1}" maxlength="250" placeholder="250자내로 작성" />
					</dd>
				</dl>
				<dl>
					<dt>
						<label for="question2Id">비밀번호 찾기 질문 2</label> <span class="fpilsu">*</span>
					</dt>
					<dd>
						<select id="question2Id" name="question2Id" class="" title="질문2">
							<option value="">:선택:</option>
							<c:forEach var="question" items="${questionList}">
								<option <c:if test="${question.id eq user.question2Id}">selected</c:if> value="${question.id}">${question.question}</option>
							</c:forEach>
						</select>
						<i class="fas fa-check fa-lg fsky idcheck_1" id="q2_check_success" title="사용가능 아이디" style="display: none;"></i> <i class="fas fa-times fa-lg fred idcheck_" title="사용중인 아이디" id="q2_check_fail" style="display: none;"></i>
						<div class="guide-text" id="q2_guide_text">※ 6~16자 영문 또는 숫자만 입력하세요.</div>
					</dd>
				</dl>
				<dl> 
					<dt><label for="answer2">비밀번호 찾기 답변 2</label> <span class="fpilsu">*</span></dt>
					<dd>
						<input type="text" id="answer2" name="answer2" class="required" title="답변2" value="${user.answer2}" maxlength="250" placeholder="250자내로 작성" />
					</dd>
				</dl>
			</fieldset>

			<!-- 기타 정보 -->
			<fieldset class="input_info">
				<dl>
					<dt>SMS 수신 <span class="fpilsu">*</span></dt>
					<dd class="bnone">
						<label><input type="radio" name="smsAgree" <c:if test="${user.smsAgree eq true}">checked</c:if> title="SMS 수신" value="true"  /> 수신</label>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<label><input type="radio" name="smsAgree" title="SMS 수신하지 않음" value="false" <c:if test="${user.smsAgree eq false}">checked</c:if>/> 수신하지 않음</label>
					</dd>
				</dl>
				<dl>
					<dt>이메일 수신 <span class="fpilsu">*</span></dt>
					<dd class="bnone">
						<label><input type="radio" name="emailAgree" title="이메일 수신" value="true" <c:if test="${user.emailAgree eq true}">checked</c:if> /> 수신</label>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<label><input type="radio" name="emailAgree" title="이메일 수신하지 않음" value="false" <c:if test="${user.emailAgree eq false}">checked</c:if> /> 수신하지 않음</label>
					</dd>
				</dl>
			</fieldset>


			<!-- 가입 약관 동의 -->


			<div class="mt20 center">
				<input type="submit" class="login_btn01" value="수정하기" />
			</div>
	</div>

	<input type="hidden" name="role" id="role">
	</form>
</div>
</div>



	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<script>
	const roleObject = {
		"ROLE_USER" : 1,
		"ROLE_PARTNER" : 2
	}
    // 아이디 중복검사
    
    let pwCheck = true;
    let idCheck = true;
    let nameCheck = true;
    let nickCheck = true;
    let mobileCheck = true;
    let emailCheck = true;
    let emailValid = true;
    let quesion1Check = true;
    let quesion2Check = true;
    
    const showInputSuccessIcon = (el) => {
    	$("#" + el + "_fail").css("display", "none");
    	$("#" + el + "_success").css("display", "block");
    }
    
    const hideInputIcon = (el) => {
    	$("#" + el + "_fail").css("display", "none");
    	$("#" + el + "_success").css("display", "none");
    }
    
    const showInputFailIcon = (el) => {
    	$("#" + el + "_success").css("display", "none");
    	$("#" + el + "_fail").css("display", "block");
    }
    
    const showGuideText = (el, text, color) => {
    	$("#" + el).css("display", "block").css("color", color).text(text);
    }
    
    const hideGuideText = (el) => {
    	$("#" + el).css("display", "none");
    }
    
    $('#id').on('keyup', function () {
    	idCheck = false;
        const idVal = $(this).val().trim();
        
        if (idVal === "") {
        	hideInputIcon("id_check");
            hideGuideText("id_guide_text");
            return;
        }
        
        if (idVal.length < 6 || idVal.length > 16 || !/^[a-zA-Z0-9]+$/.test(idVal)) {
            showInputFailIcon("id_check");
            showGuideText("id_guide_text", "아이디는 6~16자의 영문자 또는 숫자만 가능합니다.", "red");
            return;
        }

        axios.get("<c:url value='/user/check/id' />", { params: { id: idVal } })
            .then(res => {
            	console.log(res.data == 0)
                if (res.data == 0) {
                	showInputSuccessIcon("id_check");
                	showGuideText("id_guide_text", "사용 가능한 아이디 입니다.", "green");
                	idCheck = true
                } else {
                	showInputFailIcon("id_check");
                	showGuideText("id_guide_text", "중복된 아이디가 존재합니다.", "red");
                	idCheck = false;
                }
            })
            .catch(() =>{ 
            	showInputFailIcon("id_check");
            	showGuideText("id_guide_text", "아이디 중복체크 중 에러가 발생하였습니다.", "red");
            	idCheck = false;
            });
    });

    // 비밀번호 길이 확인
    $('#password').on('keyup', function () {
        const pw = $(this).val();
        pwCheck = false;
        
        if (pw === "" && $("#user_passwd_re").val() == "") {
        	hideInputIcon("pw_check");
            hideGuideText("pw_guide_text");
            
            hideInputIcon("pw_re_check");
            hideGuideText("pw_re_guide_text");
            return;
        }
        
        if (pw.length < 6 || pw.length > 16) {
        	showInputFailIcon("pw_check");
            showGuideText("pw_guide_text", "비밀번호는 6~16자의 영문자 또는 숫자만 가능합니다.", "red");
            
            showInputFailIcon("pw_re_check");
            showGuideText("pw_re_guide_text", "비밀번호는 6~16자의 영문자 또는 숫자만 가능합니다.", "red");
            return;
        }
        console.log(pw)
        console.log($("#user_passwd_re").val())
        if(pw != $("#user_passwd_re").val()){
        	showInputFailIcon("pw_check");
            showGuideText("pw_guide_text", "비밀번호 확인이 필요합니다.", "red");
            
            showInputFailIcon("pw_re_check");
            showGuideText("pw_re_guide_text", "비밀번호 확인이 필요합니다.", "red");
            return;
        }
        
        showInputSuccessIcon("pw_check");
        showGuideText("pw_guide_text", "비밀번호 확인이 일치합니다.", "green");
        showInputSuccessIcon("pw_re_check");
        showGuideText("pw_re_guide_text", "비밀번호 확인이 일치합니다.", "green");
        pwCheck = true;
    });

    // 비밀번호 확인 일치
    $('#user_passwd_re').on('keyup', function () {
    	pwCheck = false;
    	
    	if ($(this).val() == "" && $('#password').val() == "") {
        	hideInputIcon("pw_check");
            hideGuideText("pw_guide_text");
            
            hideInputIcon("pw_re_check");
            hideGuideText("pw_re_guide_text");
            return;
        }
    	
        if ($(this).val() !== $('#password').val()) {
        	showInputFailIcon("pw_check");
            showGuideText("pw_guide_text", "비밀번호 확인이 필요합니다.", "red");
            
            showInputFailIcon("pw_re_check");
            showGuideText("pw_re_guide_text", "비밀번호 확인이 필요합니다.", "red");
            return;
        }
        
        showInputSuccessIcon("pw_check");
        showGuideText("pw_guide_text", "비밀번호 확인이 일치합니다.", "green");
        showInputSuccessIcon("pw_re_check");
        showGuideText("pw_re_guide_text", "비밀번호 확인이 일치합니다.", "green");
        pwCheck = true;
    });

    // 이름 한글 검증
    let isComposing = false;

    $('#name')
	    .on('compositionstart', function () {
	        isComposing = true;
	    })
	    .on('compositionend', function () {
	        isComposing = false;
	        handleNameInput($(this));
	    })
	    .on('input', function () {
	        if (!isComposing) {
	            handleNameInput($(this));
	        }
	    });
	
	function handleNameInput($el) {
	    nameCheck = false;
	
	    const rawVal = $el.val();
	    const filteredVal = rawVal.replace(/[^가-힣]/g, '');
	
	    if (rawVal !== filteredVal) {
	        $el.val(filteredVal);  // 잘못된 문자 제거
	    }
	
	    const finalVal = $el.val();  // 제거 후 실제 최종값
	
	    // 입력값이 아예 없을 경우
	    if (finalVal === "") {
	        hideInputIcon("name_check");
	        hideGuideText("name_guide_text");
	        return;
	    }
	
	    // 2자 미만일 경우
	    if (finalVal.length < 2) {
	        showInputFailIcon("name_check");
	        showGuideText("name_guide_text", "이름은 최소 2자 이상이어야 합니다.", "red");
	        return;
	    }
	
	    // 한글 외 포함된 경우 (예외 처리용)
	    if (/[^가-힣]/.test(finalVal)) {
	        showInputFailIcon("name_check");
	        showGuideText("name_guide_text", "이름은 한글만 입력 가능합니다.", "red");
	        return;
	    }
	
	    // 정상 입력
	    showInputSuccessIcon("name_check");
	    showGuideText("name_guide_text", "한글 이름이 확인되었습니다.", "green");
	    nameCheck = true;
	}


    // 닉네임 중복검사
    $('#nickName').on('keyup', function () {
    	nickCheck = false;
        const nickVal = $(this).val().trim();
        
        if (nickVal === "") {
        	hideInputIcon("nick_check");
            hideGuideText("nick_guide_text");
            return;
        }
        
        if (nickVal.length < 2 || nickVal.length > 16) {
            showInputFailIcon("nick_check");
            showGuideText("nick_guide_text", "닉네임은 2~16자의 문자로만 사용 가능합니다.", "red");
            return;
        }
        axios.get("<c:url value='/user/check/nick' />", { params: { nickName: nickVal } })
        .then(res => {
            if (res.data == 0) {
            	showInputSuccessIcon("nick_check");
            	showGuideText("nick_guide_text", "사용 가능한 닉네임 입니다.", "green");
            	nickCheck = true
            } else {
            	showInputFailIcon("nick_check");
            	showGuideText("nick_guide_text", "중복된 닉네임이 존재합니다.", "red");
            	nickCheck = false;
            }
        })
        .catch(() =>{ 
        	showInputFailIcon("nick_check");
        	showGuideText("nick_guide_text", "닉네임 중복체크 중 에러가 발생하였습니다.", "red");
        	nickCheck = false;
        });
    });

    // 휴대폰 중복검사
    $('#phoneMobile').on('keyup', function () {
    	mobileCheck = false;
	    let val = $(this).val();
	
	    // 숫자 외 문자 제거
	    const onlyNumber = val.replace(/[^0-9]/g, '');
	    if (val !== onlyNumber) {
	        $(this).val(onlyNumber);
	        val = onlyNumber;
	    }
	
	    const phoneVal = val.trim();
	    
	    if (phoneVal === "") {
        	hideInputIcon("mobile_check");
            hideGuideText("mobile_guide_text");
            return;
        }
	    
	    if (!/^\d{10,11}$/.test(phoneVal)) {
	        showInputFailIcon("mobile_check");
	        showGuideText("mobile_guide_text", "휴대폰 번호 형식이 올바르지 않습니다. 숫자만 입력해주세요", "red");
	        return;
	    }
	
	    axios.get("<c:url value='/user/check/phone' />", { params: { phoneMobile: phoneVal } })
	        .then(res => {
	            if (res.data == 0) {
	                showInputSuccessIcon("mobile_check");
	                showGuideText("mobile_guide_text", "사용 가능한 핸드폰번호 입니다.", "green");
	                mobileCheck = true;
	            } else {
	                showInputFailIcon("mobile_check");
	                showGuideText("mobile_guide_text", "이미 등록된 핸드폰번호 입니다.", "red");
	                mobileCheck = false;
	            }
	        })
	        .catch(() => {
	            showInputFailIcon("mobile_check");
	            showGuideText("mobile_guide_text", "핸드폰번호 중복체크 중 에러가 발생하였습니다.", "red");
	            mobileCheck = false;
	        });
	});
    
    $('#phoneHome').on('keyup', function () {
        let val = $(this).val();

        // 숫자 외 문자 제거
        const onlyNumber = val.replace(/[^0-9]/g, '');
        if (val !== onlyNumber) {
            $(this).val(onlyNumber);
            val = onlyNumber;
        }

        const phoneVal = val.trim();

        // 미입력 시 아무 메시지 없이 리셋
        if (phoneVal === "") {
        	hideInputIcon("home_check");
            hideGuideText("home_guide_text");
            return;
        }

        // 집전화는 9~11자리 숫자
        if (!/^\d{9,11}$/.test(phoneVal)) {
            showInputFailIcon("home_check");
            showGuideText("home_guide_text", "전화번호 형식이 올바르지 않습니다. 숫자만 입력해주세요", "red");
        } else {
            showInputSuccessIcon("home_check");
            showGuideText("home_guide_text", "유효한 전화번호입니다.", "green");
        }
    });




    // 이메일 중복검사
    $('#email').on('keyup', function () {
    	emailCheck = false;
    	
    	if(emailValid){
    		showInputFailIcon("email_val_check");
            showGuideText("email_val_guide_text", "이메일이 변경되었습니다. 재 발송 후 다시 인증번호를 입력해주세요", "red");
    	}
    	emailValid = false;
    	$('#btn_email').off('click').addClass("ab_h");
    	$("#email_val").off("keyup")
    	
    	
	    const emailVal = $(this).val().trim();
	    const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
	
	    // 입력값이 비어 있으면 메시지/아이콘 제거
	    if (emailVal === "") {
	        hideInputIcon("email_check");
	        hideGuideText("email_guide_text");
	        return;
	    }
	
	    // 이메일 형식이 올바르지 않으면 실패 처리
	    if (!regex.test(emailVal)) {
	        showInputFailIcon("email_check");
	        showGuideText("email_guide_text", "이메일 형식이 올바르지 않습니다.", "red");
	        return;
	    }
	
	    // 형식이 맞으면 중복 검사
	    axios.get("<c:url value='/user/check/email' />", { params: { email: emailVal } })
		    .then(res => {
		        if (!res.data) {
		            showInputSuccessIcon("email_check");
		            showGuideText("email_guide_text", "사용 가능한 이메일입니다.", "green");
		            emailCheck = true;
	
		            // 인증 버튼 보이기 + 클릭 이벤트 재설정
		            $('#btn_email').off('click').removeClass("ab_h").on('click', function () {
		            	showInputFailIcon("email_val_check");
	                    showGuideText("email_val_guide_text", "이메일 전송중 입니다.", "green");
		                const $btn = $(this);
		                $btn.prop('disabled', true); // 클릭 직후 비활성화

		                // 이메일 전송 요청
		                axios.get("<c:url value='/user/email/send' />", {
						    params: {
						        email: emailVal
						    }
						})
		                .then(() => {
		                    showInputFailIcon("email_val_check");
		                    showGuideText("email_val_guide_text", "이메일로 발송된 인증번호를 입력해주세요.", "red");
		                    emailValid = false;
		                    $btn.prop('disabled', false); // 전송 성공 후 다시 활성화

		                    // 인증번호 입력 감지
		                    $("#email_val").off("keyup").on("keyup", function () {
		                        const inputCode = $(this).val().trim();

		                        axios.get("<c:url value='/user/email/valid' />", {
								    params: {
								    	validCode: inputCode
								    }
								})
		                        .then(response => {
		                        	console.log(response)
		                            if (response.data === "success") {
		                                showInputSuccessIcon("email_val_check");
		                                showGuideText("email_val_guide_text", "이메일 인증번호가 일치합니다.", "green");
		                                emailValid = true;
		                            } else {
		                                showInputFailIcon("email_val_check");
		                                showGuideText("email_val_guide_text", "인증번호가 일치하지 않습니다.", "red");
		                                emailValid = false;
		                            }
		                        })
		                        .catch(() => {
		                            showInputFailIcon("email_val_check");
		                            showGuideText("email_val_guide_text", "인증 확인 중 오류가 발생했습니다.", "red");
		                        });
		                    });
		                })
		                .catch(() => {
		                    showGuideText("email_val_guide_text", "이메일 발송 중 오류가 발생했습니다.", "red");
		                    $btn.prop('disabled', false); // 실패해도 버튼 다시 활성화
		                });
		            });
		        } else {
		            showInputFailIcon("email_check");
		            showGuideText("email_guide_text", "이미 사용 중인 이메일입니다.", "red");
		            $('#btn_email').off('click').addClass("ab_h");
		            $("#email_val").off("keyup");
		            emailCheck = false;
		        }
		    })
		    .catch(() => {
		        showInputFailIcon("email_check");
		        showGuideText("email_guide_text", "이메일 중복 확인 중 오류가 발생했습니다.", "red");
		        $('#btn_email').off('click').addClass("ab_h");
		        $("#email_val").off("keyup");
		        emailCheck = false;
		    });

	});
    
    $("#question1Id").change(function() {
    	quesion1Check = false;
    	console.log($(this).val());
    	
    	if($(this).val() == ""){
    		return;
    	}
    	
    	if($(this).val() == $("#question2Id").val()){
    		showInputFailIcon("q1_check");
            showGuideText("q1_guide_text", "중복 질문은 선택할 수 없습니다.", "red");
    		return;
    	}
    	hideInputIcon("q1_check");
        hideGuideText("q1_guide_text");
    	quesion1Check = true;
    })
    
    $("#question2Id").change(function() {
    	quesion2Check = false;
    	if($(this).val() == ""){
    		return;
    	}
    	
    	if($(this).val() == $("#question1Id").val()){
    		showInputFailIcon("q2_check");
            showGuideText("q2_guide_text", "중복 질문은 선택할 수 없습니다.", "red");
    		return;
    	}
    	hideInputIcon("q2_check");
        hideGuideText("q2_guide_text");
    	quesion2Check = true;
    })
    
    
    $('#all_check').on('change', function () {
        const isChecked = $(this).is(':checked');
        $('.agree_checks').prop('checked', isChecked);
    });

    // 하위 체크박스 변경 시 전체 체크박스 상태 갱신
    $('.agree_checks').on('change', function () {
        const total = $('.agree_checks').length;
        const checked = $('.agree_checks:checked').length;

        $('#all_check').prop('checked', total === checked);
    });
    
    function formSubmit(){
    	if(!idCheck){
    		alert("아이디 확인 필요");
    		$("#id").focus();
    		
    		document.getElementById("id").scrollIntoView({
    		    behavior: "smooth", // 부드럽게 이동 (옵션)
    		    block: "center"      // 상단에 정렬
    		});
    		return false;
    	}
    	
    	if(!pwCheck){
    		alert("비밀번호 확인 필요");
			$("#password").focus();
    		
    		document.getElementById("password").scrollIntoView({
    		    behavior: "smooth", // 부드럽게 이동 (옵션)
    		    block: "center"      // 상단에 정렬
    		});
    		return false;
    	}
    	
    	if(!nameCheck){
    		alert("이름 확인 필요");
			$("#name").focus();
    		
    		document.getElementById("name").scrollIntoView({
    		    behavior: "smooth", // 부드럽게 이동 (옵션)
    		    block: "center"      // 상단에 정렬
    		});
    		return false;
    	}
    	
    	if(!nickCheck){
    		alert("닉네임 확인 필요");
			$("#nickName").focus();
    		
    		document.getElementById("nickName").scrollIntoView({
    		    behavior: "smooth", // 부드럽게 이동 (옵션)
    		    block: "center"      // 상단에 정렬
    		});
    		return false;
    	}
    	
    	if(!mobileCheck){
    		alert("핸드폰번호 확인 필요");
			$("#phoneMobile").focus();
    		
    		document.getElementById("phoneMobile").scrollIntoView({
    		    behavior: "smooth", // 부드럽게 이동 (옵션)
    		    block: "center"      // 상단에 정렬
    		});
    		return false;
    	}
    	
    	if(!emailCheck){
    		alert("이메일 확인 필요");
			$("#email").focus();
    		
    		document.getElementById("email").scrollIntoView({
    		    behavior: "smooth", // 부드럽게 이동 (옵션)
    		    block: "center"      // 상단에 정렬
    		});
    		return false;
    	}
    	
    	if(!emailValid){
    		alert("이메일인증 확인 필요");
			$("#email_val").focus();
    		
    		document.getElementById("email_val").scrollIntoView({
    		    behavior: "smooth", // 부드럽게 이동 (옵션)
    		    block: "center"      // 상단에 정렬
    		});
    		return false;
    	}
    	
    	if(!quesion1Check){
    		alert("회원가입질문1 확인 필요");
			$("#question1Id").focus();
    		
    		document.getElementById("question1Id").scrollIntoView({
    		    behavior: "smooth", // 부드럽게 이동 (옵션)
    		    block: "center"      // 상단에 정렬
    		});
    		return false;
    	}
    	
    	if(!quesion2Check){
    		alert("회원가입질문2 확인 필요");
			$("#question2Id").focus();
    		
    		document.getElementById("question2Id").scrollIntoView({
    		    behavior: "smooth", // 부드럽게 이동 (옵션)
    		    block: "center"      // 상단에 정렬
    		});
    		return false;
    	}
    	
    	if($("#answer1").val().trim() == ""){
    		alert("회원가입 정답1 확인 필요");
			$("#answer1").focus();
    		
    		document.getElementById("answer1").scrollIntoView({
    		    behavior: "smooth", // 부드럽게 이동 (옵션)
    		    block: "center"      // 상단에 정렬
    		});
    		return false;
    	}
    	
    	if($("#answer2").val().trim() == ""){
    		alert("회원가입 정답2 확인 필요");
			$("#answer2").focus();
    		
    		document.getElementById("answer2").scrollIntoView({
    		    behavior: "smooth", // 부드럽게 이동 (옵션)
    		    block: "center"      // 상단에 정렬
    		});
    		return false;
    	}
    	
    	const allChecked = $('.agree_checks').filter(':checked').length === $('.agree_checks').length;

    	if (!allChecked) {
    	    alert("약관동의 확인 필요");
    	    $('.agree_checks').filter(':not(:checked)').first().get(0).scrollIntoView({
    	        behavior: "smooth",
    	        block: "center"
    	    });
    	    return false;
    	}
    	
    	$("#role").val(roleObject[$('#user_type').find('.on').data('type')])
    	    	
    	return true;
    }

</script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>