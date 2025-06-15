package net.ktop.ktop.module.web.user;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.swing.plaf.synth.Region;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import net.ktop.ktop.module.security.CustomUserDetails;
import net.ktop.ktop.module.security.CustomUserDetailsService;
import net.ktop.ktop.module.util.EmailService;
import net.ktop.ktop.module.util.file.FileDto;
import net.ktop.ktop.module.util.file.FileService;
import net.ktop.ktop.module.web.company.CompanyDto;
import net.ktop.ktop.module.web.company.CompanyService;
import net.ktop.ktop.module.web.company.file.CompanyFileDto;
import net.ktop.ktop.module.web.region.RegionDto;
import net.ktop.ktop.module.web.region.RegionService;
import net.ktop.ktop.module.web.signupquestion.SignupQuestionDto;
import net.ktop.ktop.module.web.signupquestion.SignupQuestionService;

@Controller
@RequestMapping("/user")
public class UserController {
   private static final Logger logger = LoggerFactory.getLogger(UserController.class);
   
   private final SignupQuestionService signupQuestionService;
   private final UserService userService;
   private final EmailService emailService;
   private final RegionService regionService;
   private final CompanyService companyService;
   private final FileService fileService;
   private final CustomUserDetailsService customUserDetailsService;

   @Autowired
   public UserController(UserService userService, EmailService emailService, SignupQuestionService signupQuestionService, RegionService regionService, CompanyService companyService, FileService fileService, CustomUserDetailsService customUserDetailsService) {
      this.userService = userService;
      this.emailService = emailService;
      this.signupQuestionService = signupQuestionService;
      this.regionService = regionService;
      this.companyService = companyService;
      this.fileService = fileService;
      this.customUserDetailsService = customUserDetailsService;
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
   public String mypage(@AuthenticationPrincipal CustomUserDetails user, Model model) {
	  UserDto userInfo = userService.findByUsername(user.getUsername());
	  
	  List<SignupQuestionDto> questionList = signupQuestionService.findQuestionAll(); 
	   
	   //logger.info("signup question result : {}", list);
	  model.addAttribute("questionList", questionList);
	  model.addAttribute("user",userInfo);
      return "/user/mypage";
   }
   
   @RequestMapping(value = "/mypage", method = {RequestMethod.POST})
   public String mypage(@AuthenticationPrincipal CustomUserDetails user, @ModelAttribute UserDto dto) {
	  
	   	dto.setId(user.getUsername());
	   	userService.updateUser(dto);
	   	
	   	UserDetails updatedUserDetails = customUserDetailsService.loadUserByUsername(dto.getId());
	    UsernamePasswordAuthenticationToken newAuth = new UsernamePasswordAuthenticationToken(
	        updatedUserDetails,
	        updatedUserDetails.getPassword(),
	        updatedUserDetails.getAuthorities()
	    );
	    SecurityContextHolder.getContext().setAuthentication(newAuth);
	   	
	   	return "redirect:/user/mypage";
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
   public String company(Model model, @AuthenticationPrincipal CustomUserDetails user) {
	   CompanyDto dto = null;
	   if(user != null) {
		   dto = companyService.getCompanyOne(user.getUsername());
	   }
	   
	   System.out.println(dto);
	   
	   model.addAttribute("company", dto);
	   return "/user/company";
   }
   
   @RequestMapping(value = "/company/edit", method = {RequestMethod.GET})
   public String companyEdit(Model model, @AuthenticationPrincipal CustomUserDetails user) {
	   CompanyDto dto = null;
	   if(user != null) {
		   dto = companyService.getCompanyOne(user.getUsername());
	   }
	   
	   System.out.println(dto);
	   
	   List<RegionDto> regionList = regionService.getAllRegion();
	   
	   model.addAttribute("regionList", regionList);
	   
	   model.addAttribute("company", dto);
	   return "/user/companyedit";
   }
   
   @RequestMapping(value = "/company/edit", method = {RequestMethod.POST})
   public String companyEdit(Model model, @ModelAttribute CompanyDto dto,
		    @RequestParam(value = "file1", required = false) MultipartFile file1,
		    @RequestParam(value = "file2", required = false) MultipartFile file2,
		    @RequestParam(value = "delFile1", required = false) String delFile1,
		    @RequestParam(value = "delFile2", required = false) String delFile2,
		    @AuthenticationPrincipal CustomUserDetails user) throws IOException {
	   	if(user == null) {
	   		//TODO 경고문구 flash Attribute로
	   		return "redirect:/user/company";
	   	}
	   	
	   	dto.setId(user.getUsername());
	   	companyService.updateCompanyOne(dto);

	   	List<CompanyFileDto> companyFileList = new ArrayList<>();

	    if (file1 != null && !file1.isEmpty()) {
	        FileDto fileDto = fileService.saveUploadedFile(file1);
	        companyService.deleteCompanyFileOne(delFile1);
	        companyFileList.add(new CompanyFileDto(dto.getId(), fileDto.getId(), 1));
	    }

	    if (file2 != null && !file2.isEmpty()) {
	        FileDto fileDto = fileService.saveUploadedFile(file2);
	        companyService.deleteCompanyFileOne(delFile2);
	        companyFileList.add(new CompanyFileDto(dto.getId(), fileDto.getId(), 2));
	    }
   		if(companyFileList != null && !companyFileList.isEmpty()) {
   			companyService.insertCompanyFiles(companyFileList);
   		}
   		return "redirect:/user/company";
   }
   
   @RequestMapping(value = "/company/write", method = {RequestMethod.GET})
   public String companyWrite(Model model) {
	   List<RegionDto> regionList = regionService.getAllRegion();
	   
	   model.addAttribute("regionList", regionList);
	   return "/user/companywrite";
   }
   
   @RequestMapping(value = "/company/write", method = {RequestMethod.POST})
   public String companyWrites(Model model, @ModelAttribute CompanyDto dto,
		    @RequestParam(value = "file1", required = false) MultipartFile file1,
		    @RequestParam(value = "file2", required = false) MultipartFile file2,
		    @AuthenticationPrincipal CustomUserDetails user) throws IOException {
	   	if(user == null) {
	   		//TODO 경고문구 flash Attribute로
	   		return "redirect:/user/company";
	   	}
	   	
	   	dto.setId(user.getUsername());
	   	companyService.insertCompanyOne(dto);
	   	List<CompanyFileDto> companyFileList = new ArrayList<>();

	    if (file1 != null && !file1.isEmpty()) {
	        FileDto fileDto = fileService.saveUploadedFile(file1);
	        companyFileList.add(new CompanyFileDto(dto.getId(), fileDto.getId(), 1));
	    }

	    if (file2 != null && !file2.isEmpty()) {
	        FileDto fileDto = fileService.saveUploadedFile(file2);
	        companyFileList.add(new CompanyFileDto(dto.getId(), fileDto.getId(), 2));
	    }
   		if(companyFileList != null && !companyFileList.isEmpty()) {
   			companyService.insertCompanyFiles(companyFileList);
   		}
   		return "redirect:/user/company";
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