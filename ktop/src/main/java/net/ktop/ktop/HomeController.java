package net.ktop.ktop;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.ktop.ktop.module.security.CustomUserDetails;
import net.ktop.ktop.module.web.admin.ad.AdBannerDto;
import net.ktop.ktop.module.web.admin.ad.AdBannerService;
import net.ktop.ktop.module.web.popup.PopupDto;
import net.ktop.ktop.module.web.popup.PopupService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private AdBannerService adBannerService;

	@Autowired
    private PopupService popupService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/aaaa", method = RequestMethod.GET)
	public String home(Locale locale, Model model, @AuthenticationPrincipal CustomUserDetails user) {
		logger.info("Welcome home! The client locale is {}.", locale);
		logger.info("login user {}", user != null ? user.getNickName() : "not login");
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		// 광고 배너 데이터 추가 (사용자용 - 활성화된 것만)
		try {
			AdBannerDto mainSearchDto = new AdBannerDto();
			mainSearchDto.setPosition("main");
			mainSearchDto.setActive(true);
			List<AdBannerDto> mainBanners = adBannerService.selectAdBannerList(mainSearchDto);
			
			AdBannerDto middleSearchDto = new AdBannerDto();
			middleSearchDto.setPosition("middle");
			middleSearchDto.setActive(true);
			List<AdBannerDto> middleBanners = adBannerService.selectAdBannerList(middleSearchDto);
			
			AdBannerDto bottomSearchDto = new AdBannerDto();
			bottomSearchDto.setPosition("bottom");
			bottomSearchDto.setActive(true);
			List<AdBannerDto> bottomBanners = adBannerService.selectAdBannerList(bottomSearchDto);
			
			model.addAttribute("mainBanners", mainBanners);
			model.addAttribute("middleBanners", middleBanners);
			model.addAttribute("bottomBanners", bottomBanners);
		} catch (Exception e) {
			logger.error("광고 배너 조회 중 오류 발생", e);
		}

		// 활성화된 팝업 목록 조회
		try {
			List<PopupDto> activePopups = popupService.getActivePopupList();
			model.addAttribute("activePopups", activePopups);
		} catch (Exception e) {
			logger.error("활성화된 팝업 조회 중 오류 발생", e);
		}
		
		return "home";
	}
	
}
