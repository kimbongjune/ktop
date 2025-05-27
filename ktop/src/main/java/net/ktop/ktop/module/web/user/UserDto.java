package net.ktop.ktop.module.web.user;

public class UserDto {

    /** 회원 아이디 */
    private String id;

    /** 회원 비밀번호 */
    private String password;

    /** 회원 이름 */
    private String name;

    /** 회원 이름 (닉네임) */
    private String nickName;

    /** 회원 휴대전화 번호 */
    private String phoneMobile;

    /** 회원 일반 전화번호 */
    private String phoneHome;

    /** 회원 이메일 */
    private String email;

    /** 회원가입 질문1 */
    private int question1Id;

    /** 회원가입 답변1 */
    private String answer1;

    /** 회원가입 질문2 */
    private int question2Id;

    /** 회원가입 답변2 */
    private String answer2;

    /** SMS 수신 동의 여부 */
    private boolean smsAgree;

    /** 이메일 수신 동의 여부 */
    private boolean emailAgree;

    /** 광고성 정보 수신 동의 여부 */
    private boolean adAgree;

    /** 이용약관 동의 여부 */
    private boolean termsAgree;

    /** 회원가입일 */
    private String createdAt;

    /** 회원정보 수정일 */
    private String updatedAt;

    /** 회원탈퇴일 */
    private String deletedAt;

    /** 회원 권한 */
    private int role;
    
    /** 권한 이름 */
    private String roleName;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getPhoneMobile() {
		return phoneMobile;
	}

	public void setPhoneMobile(String phoneMobile) {
		this.phoneMobile = phoneMobile;
	}

	public String getPhoneHome() {
		return phoneHome;
	}

	public void setPhoneHome(String phoneHome) {
		this.phoneHome = phoneHome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getQuestion1Id() {
		return question1Id;
	}

	public void setQuestion1Id(int question1Id) {
		this.question1Id = question1Id;
	}

	public String getAnswer1() {
		return answer1;
	}

	public void setAnswer1(String answer1) {
		this.answer1 = answer1;
	}

	public int getQuestion2Id() {
		return question2Id;
	}

	public void setQuestion2Id(int question2Id) {
		this.question2Id = question2Id;
	}

	public String getAnswer2() {
		return answer2;
	}

	public void setAnswer2(String answer2) {
		this.answer2 = answer2;
	}

	public boolean isSmsAgree() {
		return smsAgree;
	}

	public void setSmsAgree(boolean smsAgree) {
		this.smsAgree = smsAgree;
	}

	public boolean isEmailAgree() {
		return emailAgree;
	}

	public void setEmailAgree(boolean emailAgree) {
		this.emailAgree = emailAgree;
	}

	public boolean isAdAgree() {
		return adAgree;
	}

	public void setAdAgree(boolean adAgree) {
		this.adAgree = adAgree;
	}

	public boolean isTermsAgree() {
		return termsAgree;
	}

	public void setTermsAgree(boolean termsAgree) {
		this.termsAgree = termsAgree;
	}

	public String getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}

	public String getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(String updatedAt) {
		this.updatedAt = updatedAt;
	}

	public String getDeletedAt() {
		return deletedAt;
	}

	public void setDeletedAt(String deletedAt) {
		this.deletedAt = deletedAt;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	@Override
	public String toString() {
		return "UserDto [id=" + id + ", password=" + password + ", name=" + name + ", nickName=" + nickName
				+ ", phoneMobile=" + phoneMobile + ", phoneHome=" + phoneHome + ", email=" + email + ", question1Id="
				+ question1Id + ", answer1=" + answer1 + ", question2Id=" + question2Id + ", answer2=" + answer2
				+ ", smsAgree=" + smsAgree + ", emailAgree=" + emailAgree + ", adAgree=" + adAgree + ", termsAgree="
				+ termsAgree + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + ", deletedAt=" + deletedAt
				+ ", role=" + role + "]";
	}
}
