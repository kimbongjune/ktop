package net.ktop.ktop.module.web.signupquestion;

/* 회원가입 질문 DTO */
public class SignupQuestionDto {

    /* 회원가입 질문 고유 ID */
    private int id;

    /* 회원가입 질문 */
    private String question;

    /* 회원가입 질문 활성화 플래그 */
    private boolean isActive;

    /* 회원가입 질문 생성일 */
    private String createdAt;

    /* 회원가입 질문 수정일 */
    private String updatedAt;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean active) {
        isActive = active;
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

	@Override
	public String toString() {
		return "SignupQuestionDto [id=" + id + ", question=" + question + ", isActive=" + isActive + ", createdAt="
				+ createdAt + ", updatedAt=" + updatedAt + "]";
	}
}