package net.ktop.ktop.module.web.main;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.ArrayList;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.ktop.ktop.module.security.CustomUserDetails;
import net.ktop.ktop.module.web.admin.ad.AdBannerDto;
import net.ktop.ktop.module.web.admin.ad.AdBannerService;
import net.ktop.ktop.module.web.admin.material.AdminMaterialDto;
import net.ktop.ktop.module.web.admin.material.AdminMaterialService;
import net.ktop.ktop.module.web.material.MaterialDto;
import net.ktop.ktop.module.web.material.MaterialService;
import net.ktop.ktop.module.web.region.RegionDto;
import net.ktop.ktop.module.web.region.RegionService;
import net.ktop.ktop.module.web.workforce.WorkerDto;
import net.ktop.ktop.module.web.workforce.WorkerService;
import net.ktop.ktop.module.web.board.BoardPostDto;
import net.ktop.ktop.module.web.board.BoardPostService;
import net.ktop.ktop.module.web.board.BoardPostSearchDto;
import net.ktop.ktop.module.web.faq.FaqPostDto;
import net.ktop.ktop.module.web.faq.FaqPostService;
import net.ktop.ktop.module.web.popup.PopupDto;
import net.ktop.ktop.module.web.popup.PopupService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/")
public class MainController {
	
	private final RegionService regionService;
	private final AdminMaterialService adminMaterialService;
	private final MaterialService materialService;
	private final AdBannerService adBannerService;
	private final WorkerService workerService;
	private final BoardPostService boardPostService;
	private final FaqPostService faqPostService;
	private final PopupService popupService;
	
	@Autowired
	public MainController(RegionService regionService, AdminMaterialService adminMaterialService, 
			MaterialService materialService, AdBannerService adBannerService, WorkerService workerService,
			BoardPostService boardPostService, FaqPostService faqPostService, PopupService popupService) {
		this.regionService = regionService;
		this.adminMaterialService = adminMaterialService;
		this.materialService = materialService;
		this.adBannerService = adBannerService;
		this.workerService = workerService;
		this.boardPostService = boardPostService;
		this.faqPostService = faqPostService;
		this.popupService = popupService;
	}

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String home(Locale locale, Model model, @AuthenticationPrincipal CustomUserDetails user, HttpServletRequest request) {
		
		List<RegionDto> regionList = regionService.getAllRegion();
		List<AdminMaterialDto> materialList = adminMaterialService.getAllMaterial();
		
		model.addAttribute("regionList", regionList);
		model.addAttribute("materialList", materialList);
		
		// 활성화된 팝업 목록 조회 및 쿠키 기반 필터링
		try {
			List<PopupDto> allActivePopups = popupService.getActivePopupList();
			System.out.println(allActivePopups);
			List<PopupDto> popupsToShow = new ArrayList<>();
			Cookie[] cookies = request.getCookies();

			for (PopupDto popup : allActivePopups) {
				boolean shouldShow = true;
				if (cookies != null) {
					for (Cookie cookie : cookies) {
						if (("hide_popup_" + popup.getId()).equals(cookie.getName())) {
							shouldShow = false;
							break;
						}
					}
				}
				if (shouldShow) {
					popupsToShow.add(popup);
				}
			}
			model.addAttribute("activePopups", popupsToShow);
		} catch (Exception e) {
			logger.error("활성 팝업 조회 중 오류 발생", e);
		}
		
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
		
		// NEW PRODUCT - 최신 자재 9개 조회 (등록 파트너가 파트너 타입이고 승인상태)
		try {
			MaterialDto newProductDto = new MaterialDto();
			newProductDto.setPage(1);
			newProductDto.setSize(9);
			
			List<MaterialDto> newProducts = materialService.selectMaterialList(newProductDto);
			model.addAttribute("newProducts", newProducts);
		} catch (Exception e) {
			logger.error("신상품 조회 중 오류 발생", e);
		}
		
		// 전문가 - 승인상태 인력풀 3개 랜덤 조회
		try {
			WorkerDto workerDto = new WorkerDto();
			workerDto.setStatus("approved");
			workerDto.setPage(1);
			workerDto.setSize(3);
			
			List<WorkerDto> experts = workerService.selectWorkerList(workerDto);
			model.addAttribute("experts", experts);
		} catch (Exception e) {
			logger.error("전문가 조회 중 오류 발생", e);
		}
		
		// 공지사항 - 최신순 4개 조회
		try {
			BoardPostSearchDto noticeDto = new BoardPostSearchDto();
			noticeDto.setBoardType(1);  // 공지사항
			noticeDto.setPage(1);
			noticeDto.setSize(4);
			// 관리자 여부 세팅
			boolean isAdmin = (user != null && user.getAuthorities() != null && user.getAuthorities().stream().anyMatch(a -> a.getAuthority().equals("ROLE_ADMIN")));
			noticeDto.setIsAdmin(isAdmin);
			List<BoardPostDto> notices = boardPostService.selectBoardPostList(noticeDto);
			model.addAttribute("notices", notices);
		} catch (Exception e) {
			logger.error("공지사항 조회 중 오류 발생", e);
		}
		
		// 자주묻는질문 - 최신순 6개 조회
		try {
			BoardPostSearchDto faqDto = new BoardPostSearchDto();
			faqDto.setPage(1);
			faqDto.setSize(6);
			
			List<FaqPostDto> faqs = faqPostService.selectFaqPostList(faqDto);
			model.addAttribute("faqs", faqs);
		} catch (Exception e) {
			logger.error("자주묻는질문 조회 중 오류 발생", e);
		}
		
		return "main/home";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(Locale locale, Model model, @AuthenticationPrincipal UserDetails user, MaterialDto dto,
			@RequestParam(value = "page", defaultValue = "1") int page,
			@RequestParam(value = "size", defaultValue = "12") int size) {
		
		System.out.println("search : "+dto);
		dto.setPage(page);
		dto.setSize(size);
		
		// 전체 개수 조회 및 페이징 정보 설정
		int totalCount = materialService.selectMaterialCount(dto);
		dto.getPagination().setTotalCount(totalCount);
		
		List<MaterialDto> materials = materialService.selectMaterialList(dto);
		//model.addAttribute("serverTime", formattedDate );
		List<AdminMaterialDto> materialList = adminMaterialService.getAllMaterial();
		List<RegionDto> regionList = regionService.getAllRegion();
		
		model.addAttribute("regionList", regionList);
		model.addAttribute("materialList", materialList);
		model.addAttribute("materials", materials);
		model.addAttribute("pagination", dto.getPagination());
		model.addAttribute("searchDto", dto);
		
		return "main/search";
	}
	
}
