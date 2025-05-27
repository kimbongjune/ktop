package net.ktop.ktop.module.web.user;

public interface UserService {
   UserDto login(UserDto dto);

   int idCheck(String id);
   
   int nickCheck(String nickName);
   
   int phoneCheck(String phoneMobile);
   
   int emailCheck(String email);

   UserDto updateUserInfo(UserDto dto);

   int signUp(UserDto dto);

   int signOut(String id);
}