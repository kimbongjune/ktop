package net.ktop.ktop.module.web.signupquestion.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ktop.ktop.module.web.signupquestion.SignupQuestionDto;
import net.ktop.ktop.module.web.signupquestion.SignupQuestionRepository;
import net.ktop.ktop.module.web.signupquestion.SignupQuestionService;

@Service
public class SignupQuestionServiceImpl implements SignupQuestionService {
	
	private final SignupQuestionRepository signupQuestionRepository;
	
	@Autowired
	public SignupQuestionServiceImpl(SignupQuestionRepository signupQuestionRepository) {
		this.signupQuestionRepository = signupQuestionRepository;
	}

	@Override
	public List<SignupQuestionDto> findQuestionAll() {
		return signupQuestionRepository.findQuestionAll();
	}

}
