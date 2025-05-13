package net.ktop.ktop.module.web.user;

import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user")
public class UserController {
   private static final Logger logger = LoggerFactory.getLogger(UserController.class);
   private final UserService userService;

   @Autowired
   public UserController(UserService userService) {
      this.userService = userService;
   }

   @RequestMapping(value = "/login", method = {RequestMethod.GET})
   public String login(HttpSession session) {
      logger.info("login get request");
      return "/user/login";
   }
   
   @RequestMapping(value = "/signup", method = {RequestMethod.GET})
   public String signup(HttpSession session) {
      return "/user/signup";
   }
   
   @RequestMapping(value = "/signup", method = {RequestMethod.POST})
   public String signupProcess(HttpSession session, @ModelAttribute UserDto dto) {
	  int result = userService.signUp(dto);
	  logger.info("signup result : {}", result);
      return "redirect:/user/login";
   }

//   @RequestMapping(value = "/login",method = {RequestMethod.POST})
//   public String postLogin(HttpSession session, @ModelAttribute UserDto dto) {
//      logger.info("user info : {}", dto);
//      UserDto loginUser = userService.login(dto);
//      session.setAttribute("user", loginUser);
//      logger.info("login info : {}", loginUser);
//      logger.info("login post request");
//      return "redirect:/user/login";
//   }
}