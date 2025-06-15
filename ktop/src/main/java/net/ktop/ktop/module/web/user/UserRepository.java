package net.ktop.ktop.module.web.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserRepository {
   private SqlSessionTemplate template;
   
   private final static String MAPPER_NAME = "usermapper.";

   @Autowired
   public UserRepository(SqlSessionTemplate template) {
      this.template = template;
   }

   public UserDto login(UserDto dto) {
      return template.selectOne(MAPPER_NAME+"findUserOne", dto);
   }
   
   public UserDto findByUsername(String id) {
      return template.selectOne(MAPPER_NAME+"findByUsername", id);
   }

   public int idCheck(String id) {
	   return template.selectOne(MAPPER_NAME+"idCheck", id);
   }
   
   public int nickCheck(String nickName) {
	   return template.selectOne(MAPPER_NAME+"nickCheck", nickName);
   }
   
   public int phoneCheck(String phoneMobile) {
	   return template.selectOne(MAPPER_NAME+"phoneCheck", phoneMobile);
   }
   
   public int emailCheck(String email) {
	   return template.selectOne(MAPPER_NAME+"emailCheck", email);
   }

   public UserDto updateUserInfo(UserDto dto) {
      return null;
   }

   public int signUp(UserDto dto) {
	   return template.insert(MAPPER_NAME+"insertUserOne", dto);
   }

   public int signOut(String id) {
      return 0;
   }
   
   public int updateUser(UserDto dto) {
	   return template.update(MAPPER_NAME+"updateUser", dto);
   }
}