package net.ktop.ktop.module.web.user;

public interface UserService {
   UserDto login(UserDto dto);

   int idCheck(String id);

   UserDto updateUserInfo(UserDto dto);

   int signUp(UserDto dto);

   int signOut(String id);
}