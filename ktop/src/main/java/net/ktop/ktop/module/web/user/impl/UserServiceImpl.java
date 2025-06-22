package net.ktop.ktop.module.web.user.impl;

import net.ktop.ktop.module.util.EmailService;
import net.ktop.ktop.module.web.user.UserDto;
import net.ktop.ktop.module.web.user.UserRepository;
import net.ktop.ktop.module.web.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	
	private final UserRepository userRepository;
	private final PasswordEncoder passwordEncoder;
	private final EmailService emailService;

	@Autowired
	public UserServiceImpl(UserRepository userRepository, PasswordEncoder passwordEncoder, EmailService emailService) {
		this.userRepository = userRepository;
		this.passwordEncoder = passwordEncoder;
		this.emailService = emailService;
	}

	public UserDto login(UserDto dto) {
		return this.userRepository.login(dto);
	}

	public int idCheck(String id) {
		return userRepository.idCheck(id);
	}

	@Override
	public int nickCheck(String nickName) {
		return userRepository.nickCheck(nickName);
	}
	
	@Override
	public int phoneCheck(String phoneMobile) {
		return userRepository.phoneCheck(phoneMobile);
	}
	
	@Override
	public int emailCheck(String email) {
		return userRepository.emailCheck(email);
	}

	public int signUp(UserDto dto) {
		dto.setPassword(passwordEncoder.encode(dto.getPassword()));
		return userRepository.signUp(dto);
	}

	public int signOut(String id) {
		return 0;
	}

	@Override
	public UserDto findByUsername(String id) {
		return userRepository.findByUsername(id);
	}

	@Override
	public int updateUser(UserDto dto) {
		dto.setPassword(passwordEncoder.encode(dto.getPassword()));
		return userRepository.updateUser(dto);
	}

	@Override
	public String findId(UserDto dto) {
		String id = userRepository.findId(dto); 
		if(id != null) {
			emailService.sendIdFindMail(dto.getEmail(), id);
			return "입력하신 이메일로 아이디를 전송하였습니다.";
		}
		return "입력하신 정보로 가입되어있는 아이디가 존재하지 않습니다.";
	}

	@Override
	public String findPw(UserDto dto) {
		int pwExists = userRepository.findPw(dto);
		if(pwExists > 0) {
			String tempPassword = emailService.generateCode(); 
			dto.setPassword(tempPassword);
			this.updateUser(dto);
			emailService.sendPwFindMail(dto.getEmail(), tempPassword);
			return "입력하신 이메일로 임시 비밀번호가 발급되었습니다.";
		}
		return "입력하신 정보로 가입되어있는 비밀번호가 존재하지 않습니다.";
		//return userRepository.findPw(dto);
	}
}