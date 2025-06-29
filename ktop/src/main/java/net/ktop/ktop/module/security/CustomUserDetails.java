package net.ktop.ktop.module.security;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import net.ktop.ktop.module.web.user.UserDto;

public class CustomUserDetails implements UserDetails {

	private static final long serialVersionUID = 1L;
	private final UserDto user;

    public CustomUserDetails(UserDto user) {
        this.user = user;
    }

    // 추가로 사용자 정보를 꺼내기 위한 getter
    public UserDto getUser() {
        return user;
    }

    public String getName() {
        return user.getName();
    }
    
    public String getPhone() {
        return user.getPhoneMobile();
    }

    public String getEmail() {
        return user.getEmail();
    }
    
    public String getNickName() {
        return user.getNickName();
    }

    public int getRoleCode() {
        return user.getRole();
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return org.springframework.security.core.authority
                .AuthorityUtils.createAuthorityList(user.getRoleName());
    }

    @Override
    public String getPassword() {
        return user.getPassword();
    }

    @Override
    public String getUsername() {
        return user.getId();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        
        CustomUserDetails that = (CustomUserDetails) obj;
        return user != null ? user.getId().equals(that.user.getId()) : that.user == null;
    }

    @Override
    public int hashCode() {
        return user != null ? user.getId().hashCode() : 0;
    }
}