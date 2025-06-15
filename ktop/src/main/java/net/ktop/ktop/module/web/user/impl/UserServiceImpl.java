package net.ktop.ktop.module.web.user.impl;

import net.ktop.ktop.module.web.user.UserDto;
import net.ktop.ktop.module.web.user.UserRepository;
import net.ktop.ktop.module.web.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	
	private UserRepository userRepository;
	private PasswordEncoder passwordEncoder;

	@Autowired
	public UserServiceImpl(UserRepository userRepository, PasswordEncoder passwordEncoder) {
		this.userRepository = userRepository;
		this.passwordEncoder = passwordEncoder;
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
		return userRepository.updateUser(dto);
	}
}