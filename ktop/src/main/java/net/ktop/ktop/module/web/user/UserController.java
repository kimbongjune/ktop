package net.ktop.ktop.module.web.user;

import java.util.List;

import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.ktop.ktop.module.util.EmailService;
import net.ktop.ktop.module.web.signupquestion.SignupQuestionDto;
import net.ktop.ktop.module.web.signupquestion.SignupQuestionService;

@Controller
@RequestMapping("/user")
public class UserController {
   private static final Logger logger = LoggerFactory.getLogger(UserController.class);
   
   private final SignupQuestionService signupQuestionService;
   private final UserService userService;
   private final EmailService emailService;

   @Autowired
   public UserController(UserService userService, EmailService emailService, SignupQuestionService signupQuestionService) {
      this.userService = userService;
      this.emailService = emailService;
      this.signupQuestionService = signupQuestionService;
   }

   @RequestMapping(value = "/login", method = {RequestMethod.GET})
   public String login(HttpSession session) {
      logger.info("login get request");
      return "/user/login";
   }
   
   @RequestMapping(value = "/signup", method = {RequestMethod.GET})
   public String signup(HttpSession session, Model model) {
	   
	   List<SignupQuestionDto> questionList = signupQuestionService.findQuestionAll(); 
	   
	   //logger.info("signup question result : {}", list);
	   model.addAttribute("questionList", questionList);
	   return "/user/signup";
   }
   
   @RequestMapping(value = "/signup", method = {RequestMethod.POST})
   public String signupProcess(HttpSession session, @ModelAttribute UserDto dto) {
	   logger.info("recievData : {}", dto);
	   
	   int result = userService.signUp(dto);
	   logger.info("signup result : {}", result);
	   return "redirect:/user/login";
   }
   
   @RequestMapping(value = "/findid", method = {RequestMethod.GET})
   public String findId() {
      return "/user/findid";
   }
   
   @RequestMapping(value = "/findpw", method = {RequestMethod.GET})
   public String findPw() {
      return "/user/findpw";
   }
   
   @RequestMapping(value = "/mypage", method = {RequestMethod.GET})
   public String mypage() {
	  //return "redirect:/user/check";
      return "/user/mypage";
   }
   
   @RequestMapping(value = "/product", method = {RequestMethod.GET})
   public String product() {
      return "/user/product";
   }
   
   @RequestMapping(value = "/product/{id}", method = {RequestMethod.GET})
   public String product(@PathVariable("id") String id) {
      return "/user/product";
   }
   
   @RequestMapping(value = "/productall", method = {RequestMethod.GET})
   public String productAll() {
      return "/user/productall";
   }
   
   @RequestMapping(value = "/productall/{id}", method = {RequestMethod.GET})
   public String productAll(@PathVariable("id") String id) {
      return "/user/productall";
   }
   
   @RequestMapping(value = "/company", method = {RequestMethod.GET})
   public String company() {
      return "/user/company";
   }
   
   @RequestMapping(value = "/company/{id}", method = {RequestMethod.GET})
   public String company(@PathVariable("id") String id) {
      return "/user/companyedit";
   }
   
   @RequestMapping(value = "/check/id", method = {RequestMethod.GET})
   @ResponseBody
   public ResponseEntity<?> idCheck(@RequestParam("id") String id) {
	   int result = userService.idCheck(id);
       return ResponseEntity.ok(result);
   }
   
   @RequestMapping(value = "/check/nick", method = {RequestMethod.GET})
   @ResponseBody
   public ResponseEntity<?> nickCheck(@RequestParam("nickName") String nickName) {
	   int result = userService.nickCheck(nickName);
       return ResponseEntity.ok(result);
   }
   
   @RequestMapping(value = "/check/phone", method = {RequestMethod.GET})
   @ResponseBody
   public ResponseEntity<?> phoneCheck(@RequestParam("phoneMobile") String phoneMobile) {
	   int result = userService.phoneCheck(phoneMobile);
       return ResponseEntity.ok(result);
   }
   
   @RequestMapping(value = "/check/email", method = {RequestMethod.GET})
   @ResponseBody
   public ResponseEntity<?> emailCheck(@RequestParam("email") String email) {
	   int result = userService.emailCheck(email);
       return ResponseEntity.ok(result);
   }
   
   @RequestMapping(value = "/email/send", method = {RequestMethod.GET})
   @ResponseBody
   public ResponseEntity<?> emailSend(@RequestParam("email") String email, HttpSession session) {
	   String code = emailService.sendCode(email);
	   session.setAttribute("EMAIL_AUTH_CODE", code);
       return ResponseEntity.ok(code);
   }
   
   @RequestMapping(value = "/email/valid", method = {RequestMethod.GET})
   @ResponseBody
   public ResponseEntity<?> emailValid(HttpSession session, @RequestParam("validCode") String validCode) {
	   String code = (String)session.getAttribute("EMAIL_AUTH_CODE");
	   if(validCode.equals(code)) {
		   return ResponseEntity.ok("success");
	   }
	   return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("fail");
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