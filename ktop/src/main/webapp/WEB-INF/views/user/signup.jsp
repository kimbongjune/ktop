<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>

<section class="sub_container">
	<h6>서브 콘텐츠</h6>
	<div class="sub_category_box">


		<div class="web_size">

			<div class="sub_cont">

				<div class="register_box_size02">
					<div id="register_box">

						<form name="register_form" method="post" action="<c:url value='/user/signup' />" onsubmit="return formSubmit();">

							<p class="tit1">회원가입</p>


							<p class="tit2">회원 구분 선택</p>
							<ul class="tabs tabauto" id="user_type">
								<li class="on" data-type="ROLE_USER"><div>일반</div></li>
								<li data-type="ROLE_PARTNER"><div>협력사</div></li>
							</ul>
							<fieldset class="input_info">
								<dl>
									<dt>
										<label for="id">아이디</label> <span class="fpilsu">*</span>
									</dt>
									<dd>
										<input type="text" id="id" name="id" class="alnum_ idcheck" minlength="6" maxlength="16" title="아이디" placeholder="아이디 6~16글자 (영문 또는 숫자)" value="" />
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
										<input type="password" id="password" name="password" class="pwcheck" data-target="user_passwd_re" minlength="6" maxlength="16" title="비밀번호" placeholder="비밀번호 6~16글자" /> <i class="fas fa-eye-slash" title="비밀번호 보기"></i> <i class="fas fa-check fa-lg fsky pwcheck_0" title="비밀번호 완성" style="display: none;"></i> <i class="fas fa-check fa-lg fsky idcheck_1" id="pw_check_success" style="display: none; right: 35px;"></i> <i class="fas fa-times fa-lg fred idcheck_" id="pw_check_fail" style="display: none; right: 35px;"></i>
										<div class="guide-text" id="pw_guide_text">※ 6~16자 영문 또는 숫자만 입력하세요.</div>
									</dd>
								</dl>
								<dl>
									<dt>
										<label for="user_passwd_re">비밀번호 확인</label> <span class="fpilsu">*</span>
									</dt>
									<dd>
										<input type="password" id="user_passwd_re" name="user_passwd_re" class="pwcheck pwrecheck " data-target="user_passwd" minlength="6" maxlength="16" title="비밀번호 확인" placeholder="비밀번호 확인" /> <i class="fas fa-eye-slash" title="비밀번호 보기"></i> <i class="fas fa-check fa-lg fsky pwcheck_1" title="비밀번호 완성" style="display: none;"></i> <i class="fas fa-check fa-lg fsky idcheck_1" id="pw_re_check_success" style="display: none; right: 35px;"></i> <i class="fas fa-times fa-lg fred idcheck_" id="pw_re_check_fail" style="display: none; right: 35px;"></i>
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
										<input type="text" id="name" name="name" class="" title="이름" value="" maxlength="20" placeholder="실명 기입" /> <i class="fas fa-check fa-lg fsky idcheck_1" id="name_check_success" title="사용가능 아이디" style="display: none;"></i> <i class="fas fa-times fa-lg fred idcheck_" title="사용중인 아이디" id="name_check_fail" style="display: none;"></i>
										<div class="guide-text" id="name_guide_text">※ 6~16자 영문 또는 숫자만 입력하세요.</div>
									</dd>
								</dl>

								<dl>
									<dt>
										<label for="nickName">닉네임</label> <span class="fpilsu">*</span>
									</dt>
									<dd>
										<input type="text" id="nickName" name="nickName" class="" title="닉네임" value="" maxlength="20" placeholder="닉네임" /> <i class="fas fa-check fa-lg fsky idcheck_1" id="nick_check_success" title="사용가능 아이디" style="display: none;"></i> <i class="fas fa-times fa-lg fred idcheck_" title="사용중인 아이디" id="nick_check_fail" style="display: none;"></i>
										<div class="guide-text" id="nick_guide_text">※ 6~16자 영문 또는 숫자만 입력하세요.</div>
									</dd>
								</dl>
								<dl>
									<dt>
										<label for="phoneMobile">휴대폰 번호</label> <span class="fpilsu">*</span>
									</dt>
									<dd>
										<input type="tel" id="phoneMobile" name="phoneMobile" class=" hypenauto" title="휴대폰번호" value="" minlength="12" maxlength="13" placeholder="숫자만 입력" /> <i class="fas fa-check fa-lg fsky idcheck_1" id="mobile_check_success" title="사용가능 아이디" style="display: none;"></i> <i class="fas fa-times fa-lg fred idcheck_" title="사용중인 아이디" id="mobile_check_fail" style="display: none;"></i>
										<div class="guide-text" id="mobile_guide_text">※ 6~16자 영문 또는 숫자만 입력하세요.</div>
									</dd>
								</dl>
								<dl>
									<dt>
										<label for="phoneHome">전화 번호</label>
									</dt>
									<dd>
										<input type="tel" id="phoneHome" name="phoneHome" class="telnum hypenauto" title="전화번호" value="" minlength="9" maxlength="13" placeholder="숫자만 입력" /> <i class="fas fa-check fa-lg fsky idcheck_1" id="home_check_success" title="사용가능 아이디" style="display: none;"></i> <i class="fas fa-times fa-lg fred idcheck_" title="사용중인 아이디" id="home_check_fail" style="display: none;"></i>
										<div class="guide-text" id="home_guide_text">※ 6~16자 영문 또는 숫자만 입력하세요.</div>
									</dd>
								</dl>
								<dl>
									<dt>
										<label for="email">이메일</label> <span class="fpilsu">*</span>
									</dt>
									<dd>
										<input type="email" id="email" name="email" class="" title="이메일" value="" maxlength="100" placeholder="이메일 입력" /> <input type="button" id="btn_email" class="ab_m ab_h " name="btn_email" title="이메일검증" value="이메일 검증" maxlength="100" placeholder="이메일 입력" /> <i class="fas fa-check fa-lg fsky idcheck_1" id="email_check_success" title="사용가능 아이디" style="display: none; top: 32px; right: 130px;"></i> <i class="fas fa-times fa-lg fred idcheck_" title="사용중인 아이디" id="email_check_fail" style="display: none; top: 32px; right: 130px;"></i>
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
												<option value="${question.id}">${question.question}</option>
											</c:forEach>
										</select>
										<i class="fas fa-check fa-lg fsky idcheck_1" id="q1_check_success" title="사용가능 아이디" style="display: none;"></i> <i class="fas fa-times fa-lg fred idcheck_" title="사용중인 아이디" id="q1_check_fail" style="display: none;"></i>
										<div class="guide-text" id="q1_guide_text">※ 6~16자 영문 또는 숫자만 입력하세요.</div>
									</dd>
								</dl>
								<dl>
									<dt>
										<label for="answer1">비밀번호 찾기 답변 1</label> <span class="fpilsu">*</span>
									</dt>
									<dd>
										<input type="text" id="answer1" name="answer1" class="" title="답변1" value="" maxlength="250" placeholder="250자내로 작성" />
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
												<option value="${question.id}">${question.question}</option>
											</c:forEach>
										</select>
										<i class="fas fa-check fa-lg fsky idcheck_1" id="q2_check_success" title="사용가능 아이디" style="display: none;"></i> <i class="fas fa-times fa-lg fred idcheck_" title="사용중인 아이디" id="q2_check_fail" style="display: none;"></i>
										<div class="guide-text" id="q2_guide_text">※ 6~16자 영문 또는 숫자만 입력하세요.</div>
									</dd>
								</dl>
								<dl>
									<dt>
										<label for="answer2">비밀번호 찾기 답변 2</label> <span class="fpilsu">*</span>
									</dt>
									<dd>
										<input type="text" id="answer2" name="answer2" class="" title="답변2" value="" maxlength="250" placeholder="250자내로 작성" />
									</dd>
								</dl>
							</fieldset>

							<!-- 기타 정보 -->
							<fieldset class="input_info">
								<dl>
									<dt>
										SMS 수신 <span class="fpilsu">*</span>
									</dt>
									<dd class="bnone">
										<label><input type="radio" name="smsAgree" title="SMS 수신" value="true" checked="checked" /> 수신</label> &nbsp;&nbsp;&nbsp;&nbsp; <label><input type="radio" name="smsAgree" title="SMS 수신하지 않음" value="false" /> 수신하지 않음</label>
									</dd>
								</dl>
								<dl>
									<dt>
										이메일 수신 <span class="fpilsu">*</span>
									</dt>
									<dd class="bnone">
										<label><input type="radio" name="emailAgree" title="이메일 수신" value="true" checked="checked" /> 수신</label> &nbsp;&nbsp;&nbsp;&nbsp; <label><input type="radio" name="emailAgree" title="이메일 수신하지 않음" value="false" /> 수신하지 않음</label>
									</dd>
								</dl>
								<dl>
									<dt>
										<label for="secret_key">보안문자</label> <span class="fpilsu">*</span>
									</dt>
									<dd>
										<div class="secret_wrap">
											<div class="img">
												<img src="<c:url value='/captcha/captcha.jpg' />" id="secret_image" alt="보안문자이미지" />
											</div>
											<div class="btns">
												<div class="secret_btns" id="secret_reload" title="보안문자새로고침" style="position: absolute; top: 20px;">
													<i class="fas fa-redo-alt" style="right: 0px"></i> 새로고침
												</div>
											</div>
											<div class="form">
												<input type="text" id="secret_key" name="secret_key" class="alnum_ " maxlength="6" title="보안문자" placeholder="보안문자를 입력" /> <i class="fas fa-check fa-lg fsky idcheck_1" id="captcha_check_success" title="사용가능 아이디" style="display: none; top: 90px"></i> <i class="fas fa-times fa-lg fred idcheck_" title="사용중인 아이디" id="captcha_check_fail" style="display: none; top: 90px"></i>
												<div class="guide-text" id="captcha_guide_text">※ 6~16자 영문 또는 숫자만 입력하세요.</div>
											</div>
										</div>
									</dd>
								</dl>
							</fieldset>


							<!-- 가입 약관 동의 -->
							<p class="tit2">가입 약관 동의</p>

							<div class="check_info_box">
								<div class="check_info">
									<label><input type="checkbox" id="all_check" class="all_check" data-class="agree_checks" /> 이용 약관, 개인정보 수집 및 이용에 모두 동의합니다.</label>
								</div>

								<fieldset class="check_info">
									<div class="fl">
										<label><input type="checkbox" id="adAgree" name="adAgree" class="user_agree1s agree_checks " data-class="user_agree1s" title="이용약관 동의" value="1" /> 이용약관 동의 <span class="fred">(필수)</span></label>
									</div>
									<div class="fr open_selfs" data-id="acon1">내용보기</div>
									<div class="acons" id="acon1">
										<div class="con">
											<strong>제 1장 총칙</strong><br> <strong>제 2장 서비스 이용 계약</strong><br> <strong>제 3장 서비스의 이용</strong><br> <strong>제 4장 의무</strong><br> <strong>제 5장 저작권 및 면책</strong><br> <br> ------------------------------------------------------------------------------------- <br> <br> <strong>제 1 장 총칙</strong><br> <br> <strong>제 1 조 (목적) </strong><br> 이 약관은 "건축자재포털"에서 제공하는 홈페이지 서비스(이하 서비스)의 이용에 관한 조건 및 절차와 기타 필요한 사항을 규정하는 것을 목적으로 합니다. <br> <br> <strong>제 2 조 (용어의 정의) </strong><br> 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br> ① "이용자"라 함은 이용계약 체결 여부와 관계없이 "건축자재포털"에서 제공하는 서비스를 받는 회원 및 비회원<br> ② "회원"이라 함은 약관에 동의하고 아이디(ID)와 비밀번호를 발급 받아 이용계약을 체결한 대상<br> ③ "비회원"이라 함은 이용계약을 체결하지 않고 서비스를 이용하는 대상<br> ④ "아이디(ID)"라 함은 이용자 식별과 이용자의 서비스 이용을 위하여 이용계약 체결 시 이용자의 선택에 의하여 "건축자재포털"에서 부여하는 문자와 숫자의 조합<br> ⑤ "비밀번호"라 함은 이용자 자신의 비밀을 보호하기 위하여 이용자 자신이 설정한 문자와 숫자의 조합<br> ⑥ "게시물"이라 함은 "회원"이 서비스를 이용함에 있어 홈페이지에 게시한 글, 이미지, 문서를 의미 <br>
											⑦ "이용계약"이라 함은 "건축자재포털"의 서비스를 제공받기 위하여 이 약관으로 "건축자재포털"와 이용자 간의 체결하는 계약<br> ⑧ "이용해지"이라 함은 "건축자재포털"의 서비스를 더이상 제공받지 않고 이용계약을 종료시키는 의사표시<br> <br> <strong>제 3 조 (약관의 효력과 변경)</strong><br> ① 이 약관은 "건축자재포털" 홈페이지에 게시하여 이용자가 회원가입함으로써 효력을 발생합니다.<br> ② "건축자재포털"는 합리적인 사유가 발생한 경우에는 이 약관을 변경할 수 있으며, 약관을 변경한 경우에는 변경내용을 최소 7일 이전에 공시합니다.<br> ③ 등록자는 변경된 약관사항에 동의하지 않으면, 언제나 서비스 이용을 중단하고 이용계약을 해지할 수 있습니다. 약관의 효력발생일 이후의 계속적인 서비스 이용은 약관의 변경사항에 등록자가 동의한 것으로 간주됩니다.<br> <br> <strong>제 4 조 (약관 외 준칙) </strong><br> 이 약관에 명시되지 않은 사항이 관계 법령에 규정되어 있을 경우 그 규정에 따르며, 그렇지 않은 경우에는 일반적인 관례에 따릅니다. <br> <br> <strong>제 5 조 (적용범위)</strong> <br> ① 이 약관은 "건축자재포털"의 홈페이지 "회원"에게 적용합니다. <br> ② 이 약관에 명시되지 아니한 사항에 대해서는 관계 법령 및 서비스별 이용안내의 취지에 따라 적용할 수 있습니다.<br> <br> <br> <strong>제 2 장 서비스 이용 계약</strong> <br> <br> <strong>제 6 조 (이용계약의 성립)</strong><br> ① 이용계약은 이용자의 약관내용에 대한 동의와 이용자의 이용신청에 대한 "건축자재포털"의 승낙으로 성립됩니다.<br> ② 제1항의 규정에
											의해 이용자가 이용신청을 할 때에는 "건축자재포털"의 이용자 관리 시 필요로 하는 사항을 "회원가입" 서비스를 통하여 신청하여야 합니다.<br> ③ 이용계약의 성립 시기는 회원가입 절차가 완료된 시점으로 합니다. <br> <br> <strong>제 7 조(서비스 이용신청)</strong><br> ① 회원으로 가입하여 서비스를 이용하고자 하는 자는 "건축자재포털"에서 요청하는 제반정보(성명, 연락처 등)를 제공하여야 합니다. <br> ③ 타인의 명의를 도용하는 등 관계법령을 위반하여 이용신청을 한 회원의 모든 ID는 삭제되며, 관계법령에 따라 처벌을 받을 수 있습니다.<br> <br> <strong>제 8 조 (이용계약 승인의 유보와 거절)</strong><br> ① "건축자재포털"는 다음 각 호에 해당하는 경우에는 이용계약의 승인을 유보할 수 있습니다.<br> 1. 서비스관련설비에 여유가 없거나 기술상에 지장이 있는 경우<br> 2. 서비스의 효율적인 운영 등을 위하여 필요하다고 판단하는 경우<br> <br> ② "건축자재포털"는 다음 각 호에 해당하는 이용계약 신청에 대한 승인을 거절할 수 있습니다.<br> 1. 타인의 명의를 도용하여 이용신청을 하였을 때<br> 2. 이용계약 신청서의 내용을 허위로 기재하였을 때<br> 3. 이용자의 귀책사유로 인하여 승인이 불가능하거나 기타 규정한 제반 사항을 위반하며 신청하는 경우 <br> <br> <br> <strong>제 3 장 서비스의 이용</strong> <br> <br> <strong>제 9 조 (서비스 이용시간)</strong><br> 서비스의 이용 시간은 "건축자재포털"의 업무 및 기술상 특별한 지장이 없는 한 연중무휴, 1일 24시간(00:00-24:00)을 원칙으로 합니다.<br> 다만
											정기점검 등의 필요로 "건축자재포털"에서 정한 날이나 시간은 그러하지 아니합니다. 그리고 서비스의 중지 및 제한에 대해서는 별도의 조항에 따릅니다.<br> <br> <strong>제 10 조 (이용계약의 해지 및 서비스 이용의 제한)</strong> <br> ① "회원"이 서비스 이용계약을 해지하고자 하는 때에는 "건축자재포털"에 해지신청을 하여야 합니다.<br> ② "건축자재포털"는 "회원"이 다음 각 호에 해당하는 경우 사전통지 없이 이용계약을 해지하거나 전부 또는 일부의 서비스 제공을 중지할 수 있습니다.<br> 1. 타인의 아이디(ID) 및 비밀번호를 도용한 경우<br> 2. 다량의 정보를 전송하여 서비스의 안정적 운영을 방해하는 경우<br> 3. 수신자의 의사에 반하는 광고성 정보, 전자우편을 전송하는 경우<br> 4. 정보통신윤리위원회로부터의 이용제한 요구 대상인 경우<br> 5. 서비스를 이용하여 얻은 정보를 "건축자재포털"의 동의 없이 상업적으로 이용하는 경우<br> 6. 기타 "건축자재포털"에서 부적당하다고 판단한 경우<br> <br> <strong>제 11 조 (게시물의 삭제 이용 제한)</strong><br> ① "건축자재포털"는 서비스용 설비의 용량에 여유가 없다고 판단하는 경우 관련 사항을 사전공지 후 필요에 따라 이용자가 게재 또는 등록한 내용물을 삭제하거나 이용자의 서비스 이용을 부분적으로 제한할 수 있습니다.<br> ② "건축자재포털"는 이용자가 게재 또는 등록하는 서비스내의 내용물이 다음 각 호에 해당한다고 판단하는 경우에 이용자에게 사전 통지 없이 삭제할 수 있습니다. <br> 1. 다른 이용자 또는 제 3자를 비방하거나 중상모략으로 명예를 손상시키는 경우<br> 2. 해당 게시판의 운영 목적에 적합하지 않다고 판단되는 경우<br> 3. 공공질서 및
											미풍양속에 위반되는 내용의 정보, 문장, 도형 등을 유포하는 경우<br> 4. 반국가적, 반사회적, 범죄적 행위와 결부된다고 판단되는 경우<br> 5. 게시 기간이 규정된 기간을 초과한 경우<br> 6. 기타 관계 법령에 위배된다고 판단되는 경우<br> <br> <strong>제 12 조 (서비스의 중지 및 제한)</strong><br> ① "건축자재포털"는 다음 각 호에 해당하는 경우 서비스 제공을 중지할 수 있습니다.<br> 1. 서비스용 설비의 보수 또는 공사로 인한 부득이한 경우<br> 2. 전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 때<br> ② "건축자재포털"는 국가비상사태, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 서비스 이용에 지장이 있는 때에는 서비스 제공을 중지하거나 제한할 수 있습니다.<br> <br> <br> <strong>제 4 장 의무</strong><br> <br> <strong>제 13 조 ("건축자재포털"의 의무)</strong><br> ① "건축자재포털"는 "건축자재포털"의 설비를 안정적인 서비스 제공에 적합하도록 유지하여야 하며 서비스용 설비에 장애 발생 시 조속히 복구하도록 노력하여야 합니다.<br> ② 서비스 내용의 변경 또는 추가사항이 있는 경우 그 사항을 온라인을 통해 서비스 화면에 공지합니다.<br> <br> <strong>제 14 조 (개인정보보호)</strong><br> ① "건축자재포털"는 공공기관의정보공개에관한법률, 정보통신망이용촉진등에관한법률 등 관계법령에 따라 이용신청 시 제공받는 "회원"의 개인정보, 이후에 추가로 제공받는 개인정보 및 서비스 이용 중 생성되는 개인정보를 보호하여야 합니다.<br> ② "건축자재포털"는 개인정보를 이용고객의 별도의 동의 없이 제3자에게 제공하지
											않으며, 다음 각 호의 경우는 이용고객의 별도 동의 없이 제3자에게 등록자의 개인정보를 제공할 수 있습니다.<br> 1. 수사상 목적에 따른 수사기관의 서면 요구가 있는 경우에 수사협조의 목적으로 국가수사 기관에 성명, 주소등 신상정보를 제공하는 경우<br> 2. 신용정보의 이용 및 보호에 관한 법률, 전기통신 관련법률 등 법률에 특별한 규정이 있는 경우<br> 3. 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우<br> ③ "회원"은 언제나 자신이 입력한 개인정보를 열람할 수 있으며, 오류를 수정 할 수 있습니다. 자세한 방법은 이용안내에서 정한 바에 따릅니다.<br> ④ "회원"은 언제나 이용계약을 해지함으로써 개인정보의 수집 및 이용에 대한 동의, 목적 외 사용에 대한 별도동의, 제3자 제공에 대한 별도의 동의를 철회 할 수 있습니다. 해지는 회원이 원하는 경우 "건축자재포털"의 해지절차를 통해 하실 수 있습니다.<br> <br> <strong>제 15 조 ("회원"의 의무)</strong><br> ① "회원"은 서비스를 이용할 때 다음 각 호의 행위를 하지 않아야 합니다.<br> 1. 신청 또는 변경 시 허위내용의 등록 <br> 2. 타인의 정보도용 <br> 3. "건축자재포털"가 게시한 정보의 변경 <br> 4. "건축자재포털"가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시 <br> 5. "건축자재포털"와 기타 제3자의 저작권 등 지적재산권에 대한 침해 <br> 6. "건축자재포털" 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위 <br> 7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 "서비스"에 공개 또는 게시하는 행위 <br> 8. "건축자재포털"의 동의 없이
											영리를 목적으로 "서비스"를 사용하는 행위 <br> 9. 기타 불법적이거나 부당한 행위 <br> ② "회원"은 관계법, 이 약관의 규정 및 "서비스"와 관련하여 공지한 주의사항, "건축자재포털"이 통지하는 사항 등을 준수하여야 하며, 기타 "건축자재포털"의 업무에 방해되는 행위를 하여서는 안 됩니다. <br> ③ "회원"이 사용하는 단말기 등은 전기통신설비의 기술기준에 관한 규칙이 정하는 기준에 적합하여야 하며, "서비스"에 장애를 주지 않아야 합니다.<br> <br> <strong>제 16 조 (ID 및 비밀번호 등)</strong><br> ① ID 및 비밀번호에 대한 모든 관리책임은 "회원"에게 있습니다.<br> ② "회원"은 ID를 공유, 양도 또는 변경할 수 없습니다.<br> ③ "회원"에게 부여된 ID에 의하여 발생되는 서비스 이용 상의 과실 또는 제3자에 의한 부정사용 등에 대한 모든 책임은 "회원"에게 있습니다.<br> <br> <br> <strong>제 5 장 저작권 및 면책</strong><br> <br> <strong>제 17 조 (게재된 자료에 대한 권리) </strong><br> ① "회원"이 "서비스" 내에 게시한 "게시물"의 저작권은 해당 게시물의 저작자에게 귀속됩니다. <br> ② "회원"이 "서비스" 내에 게시하는 "게시물"은 검색결과 내지 "서비스" 및 관련 이벤트 등에 노출될 수 있습니다. 이 경우, "건축자재포털"는 저작권법 규정을 준수하며, "회원"은 언제든지 게시물에 대해 삭제 등의 조치를 취할 수 있습니다. <br> ③ "건축자재포털"는 제2항 이외의 방법으로 "회원"의 "게시물"을 이용하고자 하는 경우에는 전화, 팩스, 전자우편 등을 통해 사전에 "회원"의 동의를 얻어야 합니다. <br> <br> <strong>제 18 조
												(면책) </strong> <br> ① "건축자재포털"는 천재지변 또는 이에 준하는 불가항력으로 인하여 "서비스"를 제공할 수 없는 경우에는 "서비스" 제공에 관한 책임이 면제됩니다. <br> ② "건축자재포털"는 "회원"의 귀책사유로 인한 "서비스" 이용의 장애에 대하여는 책임을 지지 않습니다. <br> ③ "건축자재포털"는 "회원"이 "서비스"와 관련하여 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않습니다. <br> ④ "건축자재포털"는 "회원" 간 또는 "회원"과 제3자 상호간에 "서비스"를 매개로 하여 거래 등을 한 경우에는 책임이 면제됩니다. <br> ⑤ "건축자재포털"는 서비스 이용과 관련하여 관련법에 특별한 규정이 없는 한 책임을 지지 않습니다. <br> <br> <strong>제 19 조 (분쟁의 해결)</strong><br> ① "건축자재포털"와 "회원" 간 제기된 소송은 대한민국법을 준거법으로 합니다. <br> ② "건축자재포털"와 "회원"은 서비스와 관련하여 발생한 분쟁을 원만하게 해결하기 위하여 필요한 모든 노력을 하여야 합니다.<br> ③ "건축자재포털"와 "회원"간 발생한 분쟁에 관한 소송은 민사소송법 상의 관할법원에 제소합니다. <br> <br> <br>
											<p>▶ 이용약관 시행일자 : 2021년 07월 29일</p>
										</div>
									</div>
								</fieldset>

								<fieldset class="check_info">
									<div class="fl">
										<label> <input type="checkbox" id="termsAgree" name="termsAgree" class="user_agree2s agree_checks " data-class="user_agree2s" title="개인정보 수집 및 이용 동의" value="1" /> 개인정보 수집 및 이용 동의 <span class="fred">(필수)</span></label>
									</div>
									<div class="fr open_selfs" data-id="acon2">내용보기</div>
									<div class="acons" id="acon2">
										<div class="con">
											<strong>개인정보의 수집 및 이용 목적</strong><br> 건축자재포털 사이트에서 제공하는 서비스는 다음의 목적을 위해 개인정보를 수집 및 이용합니다. 수집된 개인정보는 다음 목적 이외의 용도로는 이용되지 않습니다.<br> 1.홈페이지 회원가입 및 관리<br> 2.사이트 업무와 관련된 연락․통지<br> 3.사이트 관련 서비스 제공, 본인인증 등<br> 4.접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계<br>
											<br> <strong>수집하려는 개인정보의 항목</strong><br> - 필수항목 : 아이디, 비밀번호, 이름, 휴대폰번호, SMS 수신여부<br> - 선택항목 : 없음<br>
											<br> <strong>개인정보의 보유 및 이용기간</strong><br> 회원가입 일로부터 탈퇴시까지 또는 사이트 운영종료일까지<br>
											<br> <strong>개인정보 수집에 대한 거부 권리 및 그에 따른 서비스 제한사항</strong><br> 이용자는 본 사이트에서 수집하는 개인정보에 대해 동의를 거부할 권리가 있으나 필수항목에 대한 수집, 이용에 대한 동의 거부 시 회원가입과 서비스 이용에 제한을 받을 수 있습니다.<br>
										</div>
									</div>
								</fieldset>
							</div>



							<div class="mt20 center">
								<input type="submit" class="login_btn01" value="가입하기" />
							</div>
					</div>

					<input type="hidden" name="role" id="role">
					</form>
				</div>
			</div>




		</div>
		<!-- web_size  -->
	</div>
	<!-- web_size  -->
	</div>
	<!-- web_size  -->
</section>
<script>
	const roleObject = {
		"ROLE_USER" : 1,
		"ROLE_PARTNER" : 2
	}
    // 아이디 중복검사
    
    let pwCheck = false;
    let idCheck = false;
    let nameCheck = false;
    let nickCheck = false;
    let mobileCheck = false;
    let emailCheck = false;
    let emailValid = false;
    let quesion1Check = false;
    let quesion2Check = false;
    let captchaCheck = false;
    
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
    
    
    //캡차
    $("#secret_key").on('keyup', function () {
    	const code = $(this).val().trim();
    	captchaCheck = false;
    	if(code == ""){
    		hideInputIcon("captcha_check");
            hideGuideText("captcha_guide_text");
            return;
    	}
    	axios.get("<c:url value='/captcha/check' />", {
		    params: {
		    	code: code
		    }
		})
        .then(response => {
            if (response.data === "success") {
                showInputSuccessIcon("captcha_check");
                showGuideText("captcha_guide_text", "보안문자가 일치합니다.", "green");
                captchaCheck = true;
            } else {
                showInputFailIcon("captcha_check");
                showGuideText("captcha_guide_text", "보안문자가 일치하지 않습니다.", "red");
                captchaCheck = false;
            }
        })
        .catch(() => {
            showInputFailIcon("captcha_check");
            showGuideText("captcha_guide_text", "보안문자 확인 중 오류가 발생했습니다.", "red");
            captchaCheck = false;
        });
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
    	
    	if(!captchaCheck){
    		alert("캡차 확인 필요");
			$("#secret_key").focus();
    		
    		document.getElementById("secret_key").scrollIntoView({
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
<%@ include file="/WEB-INF/views/common/footer.jsp"%>