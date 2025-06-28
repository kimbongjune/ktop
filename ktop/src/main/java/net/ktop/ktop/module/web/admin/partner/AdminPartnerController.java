package net.ktop.ktop.module.web.admin.partner;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import net.ktop.ktop.module.web.material.MaterialDto;
import net.ktop.ktop.module.web.material.MaterialService;
import net.ktop.ktop.module.web.partner.PartnerCompanyDto;
import net.ktop.ktop.module.web.partner.PartnerCompanyService;
import net.ktop.ktop.module.util.EmailService;

@Controller
@RequestMapping("/admin/partner")
public class AdminPartnerController {
	
	private final PartnerCompanyService partnerCompanyService;
	private final MaterialService materialService;
	private final EmailService emailService;
	
	@Autowired
    public AdminPartnerController(PartnerCompanyService partnerCompanyService, MaterialService materialService, EmailService emailService) {
		this.partnerCompanyService = partnerCompanyService;
		this.materialService = materialService;
		this.emailService = emailService;
	}

	@RequestMapping(value = "", method = RequestMethod.GET)
    public String partnerList(Model model, PartnerCompanyDto dto) {
		List<PartnerCompanyDto> partnerList = partnerCompanyService.getPartnerCompanyList(dto);
        model.addAttribute("activeMenu", "partner");
        model.addAttribute("partnerList", partnerList);
        return "admin/partner/partners";
    }

    @RequestMapping(value = "/{id}/{categoryId}", method = RequestMethod.GET)
    public String partnerDetail(Model model, @PathVariable String id, @PathVariable String categoryId, PartnerCompanyDto dto) {
    	dto.setId(id);
    	dto.setCategoryId(categoryId);
    	PartnerCompanyDto partner = partnerCompanyService.getPartnerCompanyOne(dto);
        model.addAttribute("activeMenu", "partner");
        model.addAttribute("partner", partner);
        return "admin/partner/partner";
    }
    
    @RequestMapping(value = "/{id}/{categoryId}", method = RequestMethod.POST)
    public String partnerUpdate(Model model, @PathVariable String id, @PathVariable String categoryId, @RequestParam(value="alarmText", required=false) String alarmText, @RequestParam("status") String status) {
    	
    	// 기존 협력사 정보 조회 (이메일 전송을 위해)
    	PartnerCompanyDto existingPartner = new PartnerCompanyDto();
    	existingPartner.setId(id);
    	existingPartner.setCategoryId(categoryId);
    	PartnerCompanyDto partnerInfo = partnerCompanyService.getPartnerCompanyOne(existingPartner);
    	
    	// 상태 업데이트
    	PartnerCompanyDto dto = new PartnerCompanyDto();
    	dto.setId(id);
    	dto.setCategoryId(categoryId);
    	dto.setStatus(status);
    	partnerCompanyService.updatePartnerCompany(dto);
    	
    	// 반려 상태일 때 이메일 전송
    	if ("rejected".equals(status) && alarmText != null && !alarmText.trim().isEmpty()) {
    		try {
    			emailService.sendPartnerRejectionEmail(
    				partnerInfo.getCompanyDto().getEmail(),
    				partnerInfo.getCompanyDto().getCompanyName(),
    				alarmText
    			);
    		} catch (Exception e) {
    			// 이메일 전송 실패 시 로그 출력 (실제 운영에서는 로거 사용)
    			e.printStackTrace();
    		}
    	}
    	
        model.addAttribute("activeMenu", "partner");
        return "redirect:/admin/partner/" + id + "/" + categoryId;
    }

    @RequestMapping(value = "/{id}/{categoryId}/product", method = RequestMethod.GET)
    public String partnerProduct(Model model, @PathVariable String id, @PathVariable int categoryId, PartnerCompanyDto partnerCompanyDto) {
    	MaterialDto dto = new MaterialDto();
    	dto.setPartnerId(id);
    	dto.setCategoryId(categoryId);
    	List<MaterialDto> materialList = materialService.selectMaterialList(dto);
    	
    	PartnerCompanyDto partner = partnerCompanyService.getPartnerCompanyOne(partnerCompanyDto);
    	
        model.addAttribute("activeMenu", "partner");
        model.addAttribute("partner", partner);
        model.addAttribute("materialList", materialList);
        return "admin/partner/product";
    }
}
