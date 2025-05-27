package net.ktop.ktop.module.web.main;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.ktop.ktop.module.security.CustomUserDetails;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/")
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String home(Locale locale, Model model, @AuthenticationPrincipal CustomUserDetails user) {
		logger.info("Welcome home! The client locale is {}.", locale);
		logger.info("login user {}", user != null ? user.getNickName() : "not login");
		
		//model.addAttribute("serverTime", formattedDate );
		 
		return "main/home";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(Locale locale, Model model, @AuthenticationPrincipal UserDetails user) {
		//model.addAttribute("serverTime", formattedDate );
		
		return "main/search";
	}
	
}
