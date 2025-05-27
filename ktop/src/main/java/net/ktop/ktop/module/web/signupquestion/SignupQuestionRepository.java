package net.ktop.ktop.module.web.signupquestion;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SignupQuestionRepository {
	private SqlSessionTemplate template;
	   
	private final static String MAPPER_NAME = "signupQuestionMapper.";

	@Autowired
	public SignupQuestionRepository(SqlSessionTemplate template) {
		this.template = template;
	}
	
	public List<SignupQuestionDto> findQuestionAll(){
		return template.selectList(MAPPER_NAME+"findQuestionAll");
	}
	
}
