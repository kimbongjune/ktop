<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>
		<div class="main_contents">
			<div class="sub_top">
				<h2>일반</h2>
				
			</div>



						
<h4>회원정보 수정</h4>

<form name="admin_user_form" method="post" action="#">
<input type="hidden" name="gc" value="423HMCC" />
<input type="hidden" name="do" value="update" />
<input type="hidden" name="action" value="insert" />

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
					<label for="user_id">아이디</label> <em class="fpilsu">*</em>
			</th>
    <td>
					qqqqqq
			</td>
    <th><label for="user_passwd">비밀번호</label><em class="fpilsu">*</em></th>
    <td>
		<input type="password" id="user_passwd" name="user_passwd" class="input_form required" maxlength="20" title="비밀번호" />
	</td>
</tr>
<tr>
    <th>회원분류</th>
    <td colspan="3">일반</td>

	</tr>
<tr>
    <th><label for="user_name">성명</label> <em class="fpilsu">*</em></th>
    <td><input type="text" id="user_name" name="user_name" class="input_form required" maxlength="20" title="성명" value="qqqqqq" /></td>
    <th><label for="user_email">이메일</label></th>
    <td><input type="email" id="user_email" name="user_email" class="input_form" maxlength="100" title="이메일" value="qqqqqq@naver.com" /></td>
</tr>
<tr>
	<th><label for="user_hp">휴대폰번호</label></th>
	<td><input type="tel" id="user_hp" name="user_hp" class="input_form hpnum hypenauto" title="휴대폰번호" value="01011111111" minlength="12" maxlength="13" placeholder="숫자만 입력" /></td>
	<th><label for="user_tel">전화번호</label></th>
	<td><input type="tel" id="user_tel" name="user_tel" class="input_form telnum hypenauto" title="전화번호" value="01011111111" minlength="9" maxlength="13" placeholder="숫자만 입력" /></td>
</tr>
<tr>
	<th><label for="user_addr1">주소</label></th>
	<td colspan="3">
		<input type="text" id="user_zip" name="user_zip" class="input_form numeric w60p" minlength="5" maxlength="5" title="우편번호" data-zip="user_zip" data-addr1="user_addr1" data-addr2="user_addr2" value="" />&nbsp;
		<div class="ab_m zip_search_btns" data-zip="user_zip" data-addr1="user_addr1" data-addr2="user_addr2">우편번호검색</div><br />
		<input type="text" id="user_addr1" name="user_addr1" class="input_form w90 mt5" title="주소" value="" /><br />
		<input type="text" id="user_addr2" name="user_addr2" class="input_form w300p mt5" title="상세주소" value="" /> <label for="user_addr2">상세주소 입력</label>
	</td>
</tr>
<tr>
	<th>이메일 수신</th>
	<td>
		<input type="radio" id="user_email_send_Y" name="user_email_send" title="이메일 수신" value="Y"  /> <label for="user_email_send_Y">수신</label>&nbsp;&nbsp;&nbsp;
		<input type="radio" id="user_email_send_N" name="user_email_send" title="이메일 수신하지 않음" value="N"  checked="checked" /> <label for="user_email_send_N">수신하지 않음</label>
	</td>
	<th>SMS 수신</th>
	<td>
		<input type="radio" id="user_sms_send_Y" name="user_sms_send" title="SMS 수신" value="Y"  /> <label for="user_sms_send_Y">수신</label>&nbsp;&nbsp;&nbsp;
		<input type="radio" id="user_sms_send_N" name="user_sms_send" title="SMS 수신하지 않음" value="N"  checked="checked" /> <label for="user_sms_send_N">수신하지 않음</label>
	</td>
</tr>
<tr>
    <th><label for="user_leave_date">탈퇴일자</label></th>
    <td>
		<input type="text" id="user_leave_date" name="user_leave_date" class="input_form input_datepicker hypenauto w90p" data-type="date" minlength="10" maxlength="10" title="탈퇴일자" value="" />
	</td>
    <th><label for="user_intercept_date">차단일자</label></th>
    <td>
		<input type="text" id="user_intercept_date" name="user_intercept_date" class="input_form input_datepicker hypenauto w90p" data-type="date" minlength="10" maxlength="10" title="차단일자" value="" />
	</td>
</tr>
<tr>
    <th><label for="user_memo">메모</label></th>
    <td colspan="3">
		<textarea id="user_memo" name="user_memo" class="textarea_form"></textarea>
	</td>
</tr>
<!--
<tr>
    <th><label for="user_key">유저key</label> <em class="fpilsu">*</em></th>
    <td colspan="3">
		<input type="text" id="user_key" name="user_key" class="input_form alnum_ required" minlength="5" maxlength="50" title="유저key" value="" />
	</td>
</tr>
-->
</tbody>
</table>
 
<div class="pt20 center">
	<input type="submit" class="ab_m ab_red" value="저장" />
	<a href="<c:url value='/admin/user/common' />"><div class="ab_m">목록</div></a>
</div>

</form>



		</div> <!-- main_contents -->
<script>
$('form[name="admin_user_form"]').on('submit', function(e) {
	const password = $('#user_passwd').val().trim();
	const name = $('#user_name').val().trim();
	
	if (password === "") {
		alert("비밀번호를 입력해 주세요.");
		$('#user_passwd').focus();
		e.preventDefault();
		return false;
	}
	
	if (password.length > 20) {
		alert("비밀번호는 20자 이하로 입력해 주세요.");
		$('#user_passwd').focus();
		e.preventDefault();
		return false;
	}
	
	if (name === "") {
		alert("성명을 입력해 주세요.");
		$('#user_name').focus();
		e.preventDefault();
		return false;
	}
	
	if (name.length > 20) {
		alert("성명은 20자 이하로 입력해 주세요.");
		$('#user_name').focus();
		e.preventDefault();
		return false;
	}
	
	return true;
});
</script>
<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>