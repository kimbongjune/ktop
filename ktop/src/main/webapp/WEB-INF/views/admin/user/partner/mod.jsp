<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<div class="main_contents">
			<div class="sub_top">
				<h2>협력사</h2>
			</div>

<h4>회원정보 수정</h4>

<form name="admin_user_form" method="post" action="<c:url value='/admin/user/partner/mod/${partner.id}' />">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

<table class="gtable">
<colgroup>
	<col style="width:15%;" />
	<col style="width:35%;" />
	<col style="width:15%;" />
	<col />
</colgroup>
<tbody>
<tr>
    <th>
		<label for="id">아이디</label> <em class="fpilsu">*</em>
	</th>
    <td>
		${partner.id}
	</td>
    <th><label for="password">비밀번호</label></th>
    <td>
		<input type="password" id="password" name="password" class="input_form" maxlength="16" title="비밀번호" placeholder="변경시에만 입력" />
		<i class="fas fa-check fa-lg fsky pwcheck_0" title="비밀번호 완성" id="pw_check_success" style="display: none;"></i>
		<i class="fas fa-times fa-lg fred idcheck_" id="pw_check_fail" style="display: none;"></i>
		<div class="guide-text" id="pw_guide_text">※ 6~16자 영문 또는 숫자만 입력하세요.</div>
	</td>
</tr>
<tr>
    <th>회원분류</th>
    <td colspan="3">협력사</td>
</tr>
<tr>
    <th><label for="name">성명</label> <em class="fpilsu">*</em></th>
    <td>
		<input type="text" id="name" name="name" class="input_form required" maxlength="20" title="성명" value="${partner.name}" placeholder="실명 기입" />
		<i class="fas fa-check fa-lg fsky idcheck_1" id="name_check_success" title="성명 확인" style="display: none;"></i>
		<i class="fas fa-times fa-lg fred idcheck_" title="성명 확인 필요" id="name_check_fail" style="display: none;"></i>
		<div class="guide-text" id="name_guide_text">※ 실명을 입력해주세요.</div>
	</td>
    <th><label for="nickName">닉네임</label></th>
    <td>
		<input type="text" id="nickName" name="nickName" class="input_form" maxlength="20" title="닉네임" value="${partner.nickName}" placeholder="닉네임" />
		<i class="fas fa-check fa-lg fsky idcheck_1" id="nick_check_success" title="사용가능 닉네임" style="display: none;"></i>
		<i class="fas fa-times fa-lg fred idcheck_" title="사용중인 닉네임" id="nick_check_fail" style="display: none;"></i>
		<div class="guide-text" id="nick_guide_text">※ 닉네임을 입력해주세요.</div>
	</td>
</tr>
<tr>
	<th><label for="phoneMobile">휴대폰번호</label></th>
	<td>
		<input type="tel" id="phoneMobile" name="phoneMobile" class="input_form hpnum hypenauto" title="휴대폰번호" value="${partner.phoneMobile}" minlength="12" maxlength="13" placeholder="숫자만 입력" />
		<i class="fas fa-check fa-lg fsky idcheck_1" id="mobile_check_success" title="사용가능 휴대폰번호" style="display: none;"></i>
		<i class="fas fa-times fa-lg fred idcheck_" title="사용중인 휴대폰번호" id="mobile_check_fail" style="display: none;"></i>
		<div class="guide-text" id="mobile_guide_text">※ 휴대폰번호를 입력해주세요.</div>
	</td>
	<th><label for="phoneHome">전화번호</label></th>
	<td>
		<input type="tel" id="phoneHome" name="phoneHome" class="input_form telnum hypenauto" title="전화번호" value="${partner.phoneHome}" minlength="9" maxlength="13" placeholder="숫자만 입력" />
	</td>
</tr>
<tr>
    <th><label for="email">이메일</label></th>
    <td colspan="3">
		<input type="email" id="email" name="email" class="input_form" maxlength="100" title="이메일" value="${partner.email}" placeholder="이메일 주소" />
		<i class="fas fa-check fa-lg fsky idcheck_1" id="email_check_success" title="사용가능 이메일" style="display: none;"></i>
		<i class="fas fa-times fa-lg fred idcheck_" title="사용중인 이메일" id="email_check_fail" style="display: none;"></i>
		<div class="guide-text" id="email_guide_text">※ 이메일 주소를 입력해주세요.</div>
	</td>
</tr>
<tr>
	<th>이메일 수신</th>
	<td>
		<input type="radio" id="emailAgree_Y" name="emailAgree" title="이메일 수신" value="true" <c:if test="${partner.emailAgree}">checked</c:if> /> <label for="emailAgree_Y">수신</label>&nbsp;&nbsp;&nbsp;
		<input type="radio" id="emailAgree_N" name="emailAgree" title="이메일 수신하지 않음" value="false" <c:if test="${!partner.emailAgree}">checked</c:if> /> <label for="emailAgree_N">수신하지 않음</label>
	</td>
	<th>SMS 수신</th>
	<td>
		<input type="radio" id="smsAgree_Y" name="smsAgree" title="SMS 수신" value="true" <c:if test="${partner.smsAgree}">checked</c:if> /> <label for="smsAgree_Y">수신</label>&nbsp;&nbsp;&nbsp;
		<input type="radio" id="smsAgree_N" name="smsAgree" title="SMS 수신하지 않음" value="false" <c:if test="${!partner.smsAgree}">checked</c:if> /> <label for="smsAgree_N">수신하지 않음</label>
	</td>
</tr>
<tr>
	<th>광고성 정보 수신</th>
	<td>
		<input type="radio" id="adAgree_Y" name="adAgree" title="광고성 정보 수신" value="true" <c:if test="${partner.adAgree}">checked</c:if> /> <label for="adAgree_Y">수신</label>&nbsp;&nbsp;&nbsp;
		<input type="radio" id="adAgree_N" name="adAgree" title="광고성 정보 수신하지 않음" value="false" <c:if test="${!partner.adAgree}">checked</c:if> /> <label for="adAgree_N">수신하지 않음</label>
	</td>
	<th>이용약관 동의</th>
	<td>
		<input type="radio" id="termsAgree_Y" name="termsAgree" title="이용약관 동의" value="true" <c:if test="${partner.termsAgree}">checked</c:if> /> <label for="termsAgree_Y">동의</label>&nbsp;&nbsp;&nbsp;
		<input type="radio" id="termsAgree_N" name="termsAgree" title="이용약관 동의하지 않음" value="false" <c:if test="${!partner.termsAgree}">checked</c:if> /> <label for="termsAgree_N">동의하지 않음</label>
	</td>
</tr>
</tbody>
</table>
 
<div class="pt20 center">
	<input type="submit" class="ab_m ab_red" value="저장" />
	<a href="<c:url value='/admin/user/partner' />"><div class="ab_m">목록</div></a>
</div>

</form>

		</div> <!-- main_contents -->

<script>
// 밸리데이션 변수들
let pwCheck = false;
let nameCheck = false;
let nickCheck = false;
let mobileCheck = false;
let emailCheck = false;

// 페이지 로드 시 기존 값들 체크
$(document).ready(function() {
    // 기존 이름이 있으면 체크
    const currentName = '${partner.name}';
    if (currentName && currentName.trim() !== '' && currentName.length >= 2) {
        nameCheck = true;
        showInputSuccessIcon("name_check");
        showGuideText("name_guide_text", "한글 이름이 확인되었습니다.", "green");
    }
    
    // 기존 닉네임이 있으면 체크
    const currentNickName = '${partner.nickName}';
    if (currentNickName && currentNickName.trim() !== '' && currentNickName.length >= 2) {
        nickCheck = true;
        showInputSuccessIcon("nick_check");
        showGuideText("nick_guide_text", "현재 사용 중인 닉네임입니다.", "green");
    }
    
    // 기존 휴대폰번호가 있으면 체크
    const currentPhoneMobile = '${partner.phoneMobile}';
    if (currentPhoneMobile && currentPhoneMobile.trim() !== '' && /^\d{10,11}$/.test(currentPhoneMobile.replace(/[^0-9]/g, ''))) {
        mobileCheck = true;
        showInputSuccessIcon("mobile_check");
        showGuideText("mobile_guide_text", "현재 사용 중인 휴대폰번호입니다.", "green");
    }
    
    // 기존 이메일이 있으면 체크
    const currentEmail = '${partner.email}';
    if (currentEmail && currentEmail.trim() !== '' && /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(currentEmail)) {
        emailCheck = true;
        showInputSuccessIcon("email_check");
        showGuideText("email_guide_text", "현재 사용 중인 이메일입니다.", "green");
    }
});

// 아이콘 표시 함수들
function showInputSuccessIcon(elementId) {
    const successElement = document.getElementById(elementId + '_success');
    const failElement = document.getElementById(elementId + '_fail');
    if (successElement) successElement.style.display = 'inline';
    if (failElement) failElement.style.display = 'none';
}

function showInputFailIcon(elementId) {
    const successElement = document.getElementById(elementId + '_success');
    const failElement = document.getElementById(elementId + '_fail');
    if (successElement) successElement.style.display = 'none';
    if (failElement) failElement.style.display = 'inline';
}

function hideInputIcon(elementId) {
    const successElement = document.getElementById(elementId + '_success');
    const failElement = document.getElementById(elementId + '_fail');
    if (successElement) successElement.style.display = 'none';
    if (failElement) failElement.style.display = 'none';
}

function showGuideText(elementId, message, color) {
    if (!elementId || elementId.trim() === '') {
        return;
    }
    const element = document.getElementById(elementId);
    if (element) {
        element.textContent = message;
        element.style.color = color;
    }
}

function hideGuideText(elementId) {
    if (!elementId || elementId.trim() === '') {
        return;
    }
    const element = document.getElementById(elementId);
    if (element) {
        element.textContent = '';
    }
}

// 비밀번호 체크 (변경시에만)
$('#password').on('keyup', function() {
    const pw = $(this).val();
    pwCheck = false;
    
    if (pw === "") {
        hideInputIcon("pw_check");
        hideGuideText("pw_guide_text");
        return;
    }
    
    if (pw.length < 6 || pw.length > 16) {
        showInputFailIcon("pw_check");
        showGuideText("pw_guide_text", "비밀번호는 6~16자의 영문자 또는 숫자만 가능합니다.", "red");
        return;
    }
    
    showInputSuccessIcon("pw_check");
    showGuideText("pw_guide_text", "사용 가능한 비밀번호입니다.", "green");
    pwCheck = true;
});

// 성명 체크 (한글만)
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

// 닉네임 중복 체크 (현재 사용자 제외)
$('#nickName').on('keyup', function() {
    nickCheck = false;
    const nickVal = $(this).val().trim();
    const currentNickName = '${partner.nickName}';
    
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
    
    // 현재 닉네임과 같으면 통과
    if (nickVal === currentNickName) {
        showInputSuccessIcon("nick_check");
        showGuideText("nick_guide_text", "현재 사용 중인 닉네임입니다.", "green");
        nickCheck = true;
        return;
    }
    
    axios.get("<c:url value='/user/check/nick' />", { params: { nickName: nickVal } })
        .then(res => {
            if (res.data == 0) {
                showInputSuccessIcon("nick_check");
                showGuideText("nick_guide_text", "사용 가능한 닉네임 입니다.", "green");
                nickCheck = true;
            } else {
                showInputFailIcon("nick_check");
                showGuideText("nick_guide_text", "중복된 닉네임이 존재합니다.", "red");
                nickCheck = false;
            }
        })
        .catch(() => {
            showInputFailIcon("nick_check");
            showGuideText("nick_guide_text", "닉네임 중복체크 중 에러가 발생하였습니다.", "red");
            nickCheck = false;
        });
});

// 휴대폰번호 중복 체크 (현재 사용자 제외)
$('#phoneMobile').on('keyup', function() {
    mobileCheck = false;
    let val = $(this).val();
    const currentPhoneMobile = '${partner.phoneMobile}';

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
    
    // 현재 휴대폰번호와 같으면 통과
    if (phoneVal === currentPhoneMobile) {
        showInputSuccessIcon("mobile_check");
        showGuideText("mobile_guide_text", "현재 사용 중인 휴대폰번호입니다.", "green");
        mobileCheck = true;
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

// 이메일 중복 체크 (현재 사용자 제외)
$('#email').on('keyup', function() {
    emailCheck = false;
    const emailVal = $(this).val().trim();
    const currentEmail = '${partner.email}';
    
    if (emailVal === "") {
        hideInputIcon("email_check");
        hideGuideText("email_guide_text");
        return;
    }
    
    if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(emailVal)) {
        showInputFailIcon("email_check");
        showGuideText("email_guide_text", "올바른 이메일 형식을 입력해주세요.", "red");
        return;
    }
    
    // 현재 이메일과 같으면 통과
    if (emailVal === currentEmail) {
        showInputSuccessIcon("email_check");
        showGuideText("email_guide_text", "현재 사용 중인 이메일입니다.", "green");
        emailCheck = true;
        return;
    }
    
    axios.get("<c:url value='/user/check/email' />", { params: { email: emailVal } })
        .then(res => {
            if (res.data == 0) {
                showInputSuccessIcon("email_check");
                showGuideText("email_guide_text", "사용 가능한 이메일 입니다.", "green");
                emailCheck = true;
            } else {
                showInputFailIcon("email_check");
                showGuideText("email_guide_text", "이미 등록된 이메일 입니다.", "red");
                emailCheck = false;
            }
        })
        .catch(() => {
            showInputFailIcon("email_check");
            showGuideText("email_guide_text", "이메일 중복체크 중 에러가 발생하였습니다.", "red");
            emailCheck = false;
        });
});

// 폼 제출
$('form[name="admin_user_form"]').on('submit', function(e) {
	e.preventDefault();
	
	const password = $('#password').val().trim();
	
	if (password !== "" && !pwCheck) {
		alert("비밀번호 확인이 필요합니다.");
		$('#password').focus();
		return false;
	}
	
	if (!nameCheck) {
		alert("성명 확인이 필요합니다.");
		$('#name').focus();
		return false;
	}
	
	if ($('#nickName').val().trim() !== "" && !nickCheck) {
		alert("닉네임 확인이 필요합니다.");
		$('#nickName').focus();
		return false;
	}
	
	if ($('#phoneMobile').val().trim() !== "" && !mobileCheck) {
		alert("휴대폰번호 확인이 필요합니다.");
		$('#phoneMobile').focus();
		return false;
	}
	
	if ($('#email').val().trim() !== "" && !emailCheck) {
		alert("이메일 확인이 필요합니다.");
		$('#email').focus();
		return false;
	}
	
	// 폼 제출
	this.submit();
});
</script>

<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>