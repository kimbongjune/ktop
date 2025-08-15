package net.ktop.ktop.module.web.user;

import java.util.List;

public interface UserService {
   UserDto login(UserDto dto);

   int idCheck(String id);
   
   int nickCheck(String nickName);
   
   int phoneCheck(String phoneMobile);
   
   int emailCheck(String email);

   int signUp(UserDto dto);

   int signOut(String id);
   
   UserDto findByUsername(String id);
   
   int updateUser(UserDto dto);
   
   String findId(UserDto dto);
   
   String findPw(UserDto dto);
   
   // 관리자용 회원 관리 기능
   List<UserDto> getUserList(UserDto dto);
   
   UserDto getUserById(String id);
   
   int createUser(UserDto dto);
   
   int modifyUser(UserDto dto);
   
   int deleteUser(String id);
}