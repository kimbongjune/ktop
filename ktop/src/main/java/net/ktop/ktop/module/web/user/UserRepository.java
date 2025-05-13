package net.ktop.ktop.module.web.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserRepository {
   private SqlSessionTemplate template;

   @Autowired
   public UserRepository(SqlSessionTemplate template) {
      this.template = template;
   }

   public UserDto login(UserDto dto) {
      return template.selectOne("usermapper.findUserOne", dto);
   }
   
   public UserDto findByUsername(String id) {
      return template.selectOne("usermapper.findByUsername", id);
   }

   public int idCheck(String id) {
      return 0;
   }

   public UserDto updateUserInfo(UserDto dto) {
      return null;
   }

   public int signUp(UserDto dto) {
	   return template.insert("usermapper.insertUserOne", dto);
   }

   public int signOut(String id) {
      return 0;
   }
}