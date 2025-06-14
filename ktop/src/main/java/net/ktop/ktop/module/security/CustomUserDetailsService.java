package net.ktop.ktop.module.security;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import net.ktop.ktop.module.web.user.UserController;
import net.ktop.ktop.module.web.user.UserDto;
import net.ktop.ktop.module.web.user.UserRepository;
import net.ktop.ktop.module.web.user.UserService;

public class CustomUserDetailsService implements UserDetailsService {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomUserDetailsService.class);

    @Autowired
    private UserService userService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        logger.info("CustomUserDetailsService called");
        UserDto user = userService.findByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException("사용자를 찾을 수 없습니다: " + username);
        }
        return new CustomUserDetails(user);  // 여기서 커스텀 객체로 반환
    }
}
