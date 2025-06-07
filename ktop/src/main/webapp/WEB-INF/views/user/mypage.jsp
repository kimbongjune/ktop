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
			</div> 
		
			<div class="sub_cont"> 

						
						
 
		 
			
			
  
				 
				<h3 class="sub_title">MYPAGE</h3>
						

<div class="register_box_size02">
<div id="register_box">

	<form name="register_form" method="post" action="#" onsubmit="return register_form_submit();">
	<input type="hidden" name="gc" value="MC" />
	<input type="hidden" name="do" value="update" />
	<input type="hidden" name="action" value="update" />
	<input type="hidden" name="user_type" id="user_type" value="90" />
	<input type="hidden" id="id_enabled" />

	<p class="tit1">회원정보관리</p>


		<p class="tit2">회원 구분 선택</p>
	<ul class="tabs tabauto" id="user_type">
		<li class="on" data-type="ROLE_USER"><div>일반</div></li>
		<li data-type="ROLE_PARTNER"><div>협력사</div></li>
	</ul>
	

		
	

 
		<fieldset class="input_info">
			<dl>
				<dt><label for="user_id">아이디</label> <span class="fpilsu">*</span></dt>
				<dd>
									<input type="text" id="user_id" name="user_id" class="alnum_ required idcheck" disabled minlength="6" maxlength="16" title="아이디" placeholder="아이디 6~16글자 (영문 또는 숫자)" value="admin" />
								</dd>
			</dl>
						<dl>
				<dt><label for="user_passwd">비밀번호</label> <span class="fpilsu">*</span></dt>
				<dd>
					<input type="password" id="user_passwd" name="user_passwd" class="pwcheck " data-target="user_passwd_re" minlength="6" maxlength="16" title="비밀번호" placeholder="비밀번호 6~16글자" />
					<i class="fas fa-eye-slash" title="비밀번호 보기"></i>
					<i class="fas fa-check fa-lg fsky pwcheck_0" title="비밀번호 완성" style="display: none;"></i>
				</dd>
							</dl>
			<dl>
				<dt><label for="user_passwd_re">비밀번호 확인</label> <span class="fpilsu">*</span></dt>
				<dd>
					<input type="password" id="user_passwd_re" name="user_passwd_re" class="pwcheck pwrecheck " data-target="user_passwd" minlength="6" maxlength="16" title="비밀번호 확인" placeholder="비밀번호 확인" />
					<i class="fas fa-eye-slash" title="비밀번호 보기"></i>
					<i class="fas fa-check fa-lg fsky pwcheck_1" title="비밀번호 완성" style="display: none;"></i>
				</dd>
			</dl>
					</fieldset>

		<!-- 회원 정보 --> 
		<fieldset class="input_info">
			<dl>
				<dt><label for="user_name">이름</label> <span class="fpilsu">*</span></dt>
				<dd>
									<input type="text" id="user_name" name="user_name" class="required" title="이름" value="관리자" disabled maxlength="20" placeholder="실명 기입" />
								</dd>
			</dl>
			<dl> 
				<dt><label for="user_hp">휴대폰 번호</label> <span class="fpilsu">*</span></dt>
				<dd>
					<input type="tel" id="user_hp" name="user_hp" class="hpnum required hypenauto" title="휴대폰번호" value="010-0000-0000" minlength="12" maxlength="13" placeholder="숫자만 입력" />
				</dd>
			</dl>
			<dl>
				<dt><label for="user_tel">전화 번호</label></dt>
				<dd>
					<input type="tel" id="user_tel" name="user_tel" class="telnum hypenauto" title="전화번호" value="010-4333-9432" minlength="9" maxlength="13" placeholder="숫자만 입력" />
				</dd>
			</dl>
			<dl>				
				<dt><label for="user_email">이메일</label> <span class="fpilsu">*</span></dt>
				<dd>
					<input type="email" id="user_email" name="user_email" class="required" title="이메일" value="admin@oranc.net" maxlength="100" placeholder="이메일 입력" />
				</dd>
			</dl>
		</fieldset>

				<!-- 비밀번호찾기 정보 --> 
		<fieldset class="input_info">
						<dl>
				<dt>
					<label for="user_passwd_question1">비밀번호 찾기 질문 1</label> <span class="fpilsu">*</span> 
										<p class="txt02">비빌번호 분실 시 비빌번호를 재등록할 때 사용하는 질문과 답변입니다.</p>
									</dt>
				<dd>
					<select id="user_passwd_question1" name="user_passwd_question1" class="required" title="질문1">
						<option value="">:선택:</option>
												<option value="1" >다시 태어나면 되고 싶은 것은?</option>
												<option value="2" >자신의 인생 좌우명은?</option>
												<option value="3"  selected="selected">자신의 보물 제1호는?</option>
												<option value="4" >제일 가보고 싶은 나라는?</option>
												<option value="5" >제일 좋아하는 단어는?</option>
												<option value="6" >제일 좋아하는 색깔은?</option>
												<option value="7" >제일 좋아하는 캐릭터는?</option>
												<option value="8" >제일 좋아하는 계절은?</option>
												<option value="9" >제일 좋아하는 연예인은?</option>
												<option value="10" >제일 좋아하는 스포츠는?</option>
												<option value="11" >제일 좋아하는 영화는?</option>
												<option value="12" >제일 좋아하는 장소는?</option>
											</select>
				</dd>
			</dl>
			<dl> 
				<dt><label for="user_passwd_answer1">비밀번호 찾기 답변 1</label> <span class="fpilsu">*</span></dt>
				<dd>
					<input type="text" id="user_passwd_answer1" name="user_passwd_answer1" class="required" title="답변1" value="내머리" maxlength="250" placeholder="250자내로 작성" />
				</dd>
			</dl>
						<dl>
				<dt>
					<label for="user_passwd_question2">비밀번호 찾기 질문 2</label> <span class="fpilsu">*</span> 
									</dt>
				<dd>
					<select id="user_passwd_question2" name="user_passwd_question2" class="required" title="질문2">
						<option value="">:선택:</option>
												<option value="1" >다시 태어나면 되고 싶은 것은?</option>
												<option value="2" >자신의 인생 좌우명은?</option>
												<option value="3" >자신의 보물 제1호는?</option>
												<option value="4" >제일 가보고 싶은 나라는?</option>
												<option value="5" >제일 좋아하는 단어는?</option>
												<option value="6" >제일 좋아하는 색깔은?</option>
												<option value="7" >제일 좋아하는 캐릭터는?</option>
												<option value="8" >제일 좋아하는 계절은?</option>
												<option value="9" >제일 좋아하는 연예인은?</option>
												<option value="10"  selected="selected">제일 좋아하는 스포츠는?</option>
												<option value="11" >제일 좋아하는 영화는?</option>
												<option value="12" >제일 좋아하는 장소는?</option>
											</select>
				</dd>
			</dl>
			<dl> 
				<dt><label for="user_passwd_answer2">비밀번호 찾기 답변 2</label> <span class="fpilsu">*</span></dt>
				<dd>
					<input type="text" id="user_passwd_answer2" name="user_passwd_answer2" class="required" title="답변2" value="골프" maxlength="250" placeholder="250자내로 작성" />
				</dd>
			</dl>
					</fieldset>
		
		<!-- 기타 정보 --> 
		<fieldset class="input_info">
			<dl>
				<dt>SMS 수신 <span class="fpilsu">*</span></dt>
				<dd class="bnone">
					<label><input type="radio" name="user_sms_send" title="SMS 수신" value="Y"  /> 수신</label>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<label><input type="radio" name="user_sms_send" title="SMS 수신하지 않음" value="N"  checked="checked" /> 수신하지 않음</label>
				</dd>
			</dl>
			<dl>
				<dt>이메일 수신 <span class="fpilsu">*</span></dt>
				<dd class="bnone">
					<label><input type="radio" name="user_email_send" title="이메일 수신" value="Y"  /> 수신</label>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<label><input type="radio" name="user_email_send" title="이메일 수신하지 않음" value="N"  checked="checked" /> 수신하지 않음</label>
				</dd>
			</dl>
					</fieldset>

		
		


		<div class="mt20 center">
			<input type="submit" class="login_btn01" value="수정하기" />
		</div>
		</div>


	</form>
</div>
</div>



	 
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
		</div>	<!-- web_size  -->
	</section>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>