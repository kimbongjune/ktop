package net.ktop.ktop.module.web.user;

public class UserDto {
   private String id;
   private String password;
   private String role;

   public String getId() {
      return this.id;
   }

   public void setId(String id) {
      this.id = id;
   }

   public String getPassword() {
      return this.password;
   }

   public void setPassword(String password) {
      this.password = password;
   }
	
	public String getRole() {
		return role;
	}
	
	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "UserDto [id=" + id + ", password=" + password + ", role=" + role + "]";
	}

}