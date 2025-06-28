package net.ktop.ktop.module.web.admin.ad;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import net.ktop.ktop.module.util.file.FileDto;
import net.ktop.ktop.module.util.file.FileService;

import java.io.IOException;
import java.util.List;

import javax.validation.Valid;

@Controller
@RequestMapping("/admin/site/ad")
public class AdminAdController {

    private final AdBannerService adBannerService;
    private final FileService fileService;
    
    @Autowired
    public AdminAdController(AdBannerService adBannerService, FileService fileService) {
        this.adBannerService = adBannerService;
        this.fileService = fileService;
    }

    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public String adMain(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "ad");
        
        AdBannerDto searchDto = new AdBannerDto();
        searchDto.setPosition("main");
        // 관리자 페이지에서는 isActive를 false로 설정하여 모든 광고 조회
        searchDto.setActive(false);
        List<AdBannerDto> bannerList = adBannerService.selectAdBannerList(searchDto);
        model.addAttribute("bannerList", bannerList);
        
        return "admin/site/ad/main";
    }

    @RequestMapping(value = "/popup", method = RequestMethod.GET)
    public String adPopup(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "ad");
        
        AdBannerDto searchDto2 = new AdBannerDto();
        searchDto2.setPosition("popup");
        searchDto2.setActive(false);
        List<AdBannerDto> bannerList = adBannerService.selectAdBannerList(searchDto2);
        model.addAttribute("bannerList", bannerList);
        
        return "admin/site/ad/popup";
    }

    @RequestMapping(value = "/bottom", method = RequestMethod.GET)
    public String adBottom(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "ad");
        
        AdBannerDto searchDto3 = new AdBannerDto();
        searchDto3.setPosition("bottom");
        searchDto3.setActive(false);
        List<AdBannerDto> bannerList = adBannerService.selectAdBannerList(searchDto3);
        model.addAttribute("bannerList", bannerList);
        
        return "admin/site/ad/bottom";
    }

    @RequestMapping(value = "/middle", method = RequestMethod.GET)
    public String adMiddle(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "ad");
        
        AdBannerDto searchDto4 = new AdBannerDto();
        searchDto4.setPosition("middle");
        searchDto4.setActive(false);
        List<AdBannerDto> bannerList = adBannerService.selectAdBannerList(searchDto4);
        model.addAttribute("bannerList", bannerList);
        
        return "admin/site/ad/middle";
    }

    @RequestMapping(value = "/write", method = RequestMethod.GET)
    public String adWrite(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "ad");
        return "admin/site/ad/write";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String adEdit(Model model, @PathVariable Long id) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "ad");
        
        AdBannerDto banner = adBannerService.selectAdBannerOne(id);
        model.addAttribute("banner", banner);
        
        return "admin/site/ad/edit";
    }
    
    // 광고 등록 처리
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String adAdd(@ModelAttribute AdBannerDto dto,
            		BindingResult bindingResult,
                       @RequestParam("uploadFile") MultipartFile file,
                       RedirectAttributes redirectAttributes) {
        try {
        	if (bindingResult.hasErrors()) {
                System.out.println("=== 바인딩 오류 발생 ===");
                bindingResult.getAllErrors().forEach(error -> {
                    System.out.println(error.toString());
                });
        	}
            System.out.println("=== 광고 등록 요청 데이터 ===");
            System.out.println("DTO: " + dto.toString());
            System.out.println("파일: " + (file != null ? file.getOriginalFilename() : "null"));
            System.out.println("파일 크기: " + (file != null ? file.getSize() : "0"));
            System.out.println("==========================");
            // 파일 필수 검증
            if (file.isEmpty()) {
                redirectAttributes.addFlashAttribute("error", "파일을 선택해주세요.");
                return "redirect:/admin/site/ad/write";
            }
            
            // 파일 형식 검증
            String contentType = file.getContentType();
            if (contentType == null || (!contentType.startsWith("image/") && !contentType.startsWith("video/"))) {
                redirectAttributes.addFlashAttribute("error", "이미지 또는 동영상 파일만 업로드할 수 있습니다.");
                return "redirect:/admin/site/ad/write";
            }
            
            // 파일 크기 검증 (10MB)
            if (file.getSize() > 10 * 1024 * 1024) {
                redirectAttributes.addFlashAttribute("error", "파일 크기는 10MB를 초과할 수 없습니다.");
                return "redirect:/admin/site/ad/write";
            }
            
            // 파일 업로드 처리
            FileDto fileDto = fileService.saveUploadedFile(file);
            dto.setFileId(fileDto.getId());
            
            // 미디어 타입 자동 설정
            if (contentType.startsWith("image/")) {
                dto.setMediaType("image");
            } else if (contentType.startsWith("video/")) {
                dto.setMediaType("video");
            }
            
            int result = adBannerService.insertAdBanner(dto);
            
            if (result > 0) {
                redirectAttributes.addFlashAttribute("message", "광고가 성공적으로 등록되었습니다.");
            } else {
                redirectAttributes.addFlashAttribute("error", "광고 등록에 실패했습니다.");
            }
            
        } catch (IOException e) {
            redirectAttributes.addFlashAttribute("error", "파일 업로드에 실패했습니다.");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("error", "광고 등록 중 오류가 발생했습니다.");
        }
        
        return "redirect:/admin/site/ad/" + dto.getPosition();
    }
    
    // 광고 수정 처리  
    @RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
    public String adUpdate(@PathVariable Long id,
                          @ModelAttribute AdBannerDto dto,
                          BindingResult bindingResult,
                          @RequestParam(value = "uploadFile", required = false) MultipartFile file,
                          RedirectAttributes redirectAttributes) {
        try {
        	if (bindingResult.hasErrors()) {
                System.out.println("=== 바인딩 오류 발생 ===");
                bindingResult.getAllErrors().forEach(error -> {
                    System.out.println(error.toString());
                });
        	}
        	
            System.out.println("=== 광고 수정 요청 데이터 ===");
            System.out.println("ID: " + id);
            System.out.println("DTO: " + dto.toString());
            System.out.println("파일: " + (file != null ? file.getOriginalFilename() : "null"));
            System.out.println("파일 크기: " + (file != null ? file.getSize() : "0"));
            System.out.println("==========================");
            
            dto.setId(id);
            
            // 파일이 있으면 업로드 처리
            if (file != null && !file.isEmpty()) {
                // 파일 형식 검증
                String contentType = file.getContentType();
                if (contentType == null || (!contentType.startsWith("image/") && !contentType.startsWith("video/"))) {
                    redirectAttributes.addFlashAttribute("error", "이미지 또는 동영상 파일만 업로드할 수 있습니다.");
                    return "redirect:/admin/site/ad/edit/" + id;
                }
                
                // 파일 크기 검증 (10MB)
                if (file.getSize() > 10 * 1024 * 1024) {
                    redirectAttributes.addFlashAttribute("error", "파일 크기는 10MB를 초과할 수 없습니다.");
                    return "redirect:/admin/site/ad/edit/" + id;
                }
                
                FileDto fileDto = fileService.saveUploadedFile(file);
                dto.setFileId(fileDto.getId());
                
                // 미디어 타입 자동 설정
                if (contentType.startsWith("image/")) {
                    dto.setMediaType("image");
                } else if (contentType.startsWith("video/")) {
                    dto.setMediaType("video");
                }
            }
            
            int result = adBannerService.updateAdBanner(dto);
            
            if (result > 0) {
                redirectAttributes.addFlashAttribute("message", "광고가 성공적으로 수정되었습니다.");
            } else {
                redirectAttributes.addFlashAttribute("error", "광고 수정에 실패했습니다.");
            }
            
        } catch (IOException e) {
            redirectAttributes.addFlashAttribute("error", "파일 업로드에 실패했습니다.");
            e.printStackTrace();
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("error", "광고 수정 중 오류가 발생했습니다.");
            e.printStackTrace();
        }
        
        return "redirect:/admin/site/ad/" + dto.getPosition();
    }
    
    // 광고 삭제 API
    @RequestMapping(value = "/del/{id}", method = RequestMethod.DELETE)
    @ResponseBody
    public ResponseEntity<?> adDelete(@PathVariable Long id) {
        try {
            int result = adBannerService.deleteAdBanner(id);
            
            if (result > 0) {
                return ResponseEntity.ok().build();
            } else {
                return ResponseEntity.badRequest().body("삭제에 실패했습니다.");
            }
            
        } catch (Exception e) {
            return ResponseEntity.status(500).body("삭제 중 오류가 발생했습니다.");
        }
    }
}
