package net.ktop.ktop.module.web.admin.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import net.ktop.ktop.module.web.user.UserDto;
import net.ktop.ktop.module.web.user.UserService;

@Controller
@RequestMapping("/admin/user")
public class AdminUserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/common", method = RequestMethod.GET)
    public String userCommon(Model model, 
                           @RequestParam(required = false) String sit,
                           @RequestParam(required = false) String stx) {
        model.addAttribute("activeMenu", "user");
        model.addAttribute("activeSubMenu", "userCommon");
        
        // 검색 조건 설정
        UserDto searchDto = new UserDto();
        if (sit != null && !sit.isEmpty()) {
            searchDto.setSearchType(sit);
        }
        if (stx != null && !stx.isEmpty()) {
            searchDto.setSearchKeyword(stx);
        }
        
        // 일반회원 목록 조회 (role=3으로 필터링)
        searchDto.setRole(3);
        List<UserDto> userList = userService.getUserList(searchDto);
        model.addAttribute("userList", userList);
        model.addAttribute("searchType", sit);
        model.addAttribute("searchKeyword", stx);
        
        return "admin/user/common/index";
    }

    @RequestMapping(value = "/common/add", method = RequestMethod.GET)
    public String userCommonAdd(Model model) {
        model.addAttribute("activeMenu", "user");
        model.addAttribute("activeSubMenu", "userCommon");
        return "admin/user/common/add";
    }
    
    @RequestMapping(value = "/common/add", method = RequestMethod.POST)
    public String userCommonAddPost(@ModelAttribute UserDto userDto, Model model) {
        try {
            // 일반회원은 role=3으로 설정
            userDto.setRole(3);
            int result = userService.createUser(userDto);
            if (result > 0) {
                return "redirect:/admin/user/common";
            } else {
                model.addAttribute("error", "회원 생성에 실패했습니다.");
                model.addAttribute("activeMenu", "user");
                model.addAttribute("activeSubMenu", "userCommon");
                return "admin/user/common/add";
            }
        } catch (Exception e) {
            model.addAttribute("error", "회원 생성 중 오류가 발생했습니다: " + e.getMessage());
            model.addAttribute("activeMenu", "user");
            model.addAttribute("activeSubMenu", "userCommon");
            return "admin/user/common/add";
        }
    }

    @RequestMapping(value = "/common/mod/{id}", method = RequestMethod.GET)
    public String userCommonMod(Model model, @PathVariable String id) {
        model.addAttribute("activeMenu", "user");
        model.addAttribute("activeSubMenu", "userCommon");
        
        // 회원 정보 조회
        UserDto user = userService.getUserById(id);
        // role=3인지 확인
        if (user == null || user.getRole() != 3) {
            return "redirect:/admin/user/common";
        }
        model.addAttribute("user", user);
        
        return "admin/user/common/mod";
    }
    
    @RequestMapping(value = "/common/mod/{id}", method = RequestMethod.POST)
    public String userCommonModPost(@PathVariable String id, @ModelAttribute UserDto userDto, Model model) {
        try {
            userDto.setId(id);
            // 일반회원은 role=3으로 유지
            userDto.setRole(3);
            int result = userService.modifyUser(userDto);
            if (result > 0) {
                return "redirect:/admin/user/common";
            } else {
                model.addAttribute("error", "회원 수정에 실패했습니다.");
                model.addAttribute("activeMenu", "user");
                model.addAttribute("activeSubMenu", "userCommon");
                
                // 회원 정보 다시 조회
                UserDto user = userService.getUserById(id);
                model.addAttribute("user", user);
                
                return "admin/user/common/mod";
            }
        } catch (Exception e) {
            model.addAttribute("error", "회원 수정 중 오류가 발생했습니다: " + e.getMessage());
            model.addAttribute("activeMenu", "user");
            model.addAttribute("activeSubMenu", "userCommon");
            
            // 회원 정보 다시 조회
            UserDto user = userService.getUserById(id);
            model.addAttribute("user", user);
            
            return "admin/user/common/mod";
        }
    }
    
    @RequestMapping(value = "/common/del/{id}", method = RequestMethod.POST)
    @ResponseBody
    public String userCommonDel(@PathVariable String id) {
        try {
            // 일반회원인지 확인
            UserDto user = userService.getUserById(id);
            if (user == null || user.getRole() != 3) {
                return "fail";
            }
            
            int result = userService.deleteUser(id);
            if (result > 0) {
                return "success";
            } else {
                return "fail";
            }
        } catch (Exception e) {
            return "error";
        }
    }

    @RequestMapping(value = "/partner", method = RequestMethod.GET)
    public String userPartner(Model model, 
                            @RequestParam(required = false) String sit,
                            @RequestParam(required = false) String stx) {
        model.addAttribute("activeMenu", "user");
        model.addAttribute("activeSubMenu", "userPartner");
        
        // 검색 조건 설정
        UserDto searchDto = new UserDto();
        if (sit != null && !sit.isEmpty()) {
            searchDto.setSearchType(sit);
        }
        if (stx != null && !stx.isEmpty()) {
            searchDto.setSearchKeyword(stx);
        }
        
        // 협력사 목록 조회 (role=2로 필터링)
        searchDto.setRole(2);
        List<UserDto> partnerList = userService.getUserList(searchDto);
        model.addAttribute("partnerList", partnerList);
        model.addAttribute("searchType", sit);
        model.addAttribute("searchKeyword", stx);
        
        return "admin/user/partner/index";
    }

    @RequestMapping(value = "/partner/add", method = RequestMethod.GET)
    public String userPartnerAdd(Model model) {
        model.addAttribute("activeMenu", "user");
        model.addAttribute("activeSubMenu", "userPartner");
        return "admin/user/partner/add";
    }
    
    @RequestMapping(value = "/partner/add", method = RequestMethod.POST)
    public String userPartnerAddPost(@ModelAttribute UserDto userDto, Model model) {
        try {
            // 협력사는 role=2로 설정
            userDto.setRole(2);
            int result = userService.createUser(userDto);
            if (result > 0) {
                return "redirect:/admin/user/partner";
            } else {
                model.addAttribute("error", "협력사 생성에 실패했습니다.");
                model.addAttribute("activeMenu", "user");
                model.addAttribute("activeSubMenu", "userPartner");
                return "admin/user/partner/add";
            }
        } catch (Exception e) {
            model.addAttribute("error", "협력사 생성 중 오류가 발생했습니다: " + e.getMessage());
            model.addAttribute("activeMenu", "user");
            model.addAttribute("activeSubMenu", "userPartner");
            return "admin/user/partner/add";
        }
    }

    @RequestMapping(value = "/partner/mod/{id}", method = RequestMethod.GET)
    public String userPartnerMod(Model model, @PathVariable String id) {
        model.addAttribute("activeMenu", "user");
        model.addAttribute("activeSubMenu", "userPartner");
        
        // 협력사 정보 조회
        UserDto partner = userService.getUserById(id);
        // role=2인지 확인
        if (partner == null || partner.getRole() != 2) {
            return "redirect:/admin/user/partner";
        }
        model.addAttribute("partner", partner);
        
        return "admin/user/partner/mod";
    }
    
    @RequestMapping(value = "/partner/mod/{id}", method = RequestMethod.POST)
    public String userPartnerModPost(@PathVariable String id, @ModelAttribute UserDto userDto, Model model) {
        try {
            userDto.setId(id);
            // 협력사는 role=2로 유지
            userDto.setRole(2);
            int result = userService.modifyUser(userDto);
            if (result > 0) {
                return "redirect:/admin/user/partner";
            } else {
                model.addAttribute("error", "협력사 수정에 실패했습니다.");
                model.addAttribute("activeMenu", "user");
                model.addAttribute("activeSubMenu", "userPartner");
                
                // 협력사 정보 다시 조회
                UserDto partner = userService.getUserById(id);
                model.addAttribute("partner", partner);
                
                return "admin/user/partner/mod";
            }
        } catch (Exception e) {
            model.addAttribute("error", "협력사 수정 중 오류가 발생했습니다: " + e.getMessage());
            model.addAttribute("activeMenu", "user");
            model.addAttribute("activeSubMenu", "userPartner");
            
            // 협력사 정보 다시 조회
            UserDto partner = userService.getUserById(id);
            model.addAttribute("partner", partner);
            
            return "admin/user/partner/mod";
        }
    }
    
    @RequestMapping(value = "/partner/del/{id}", method = RequestMethod.POST)
    @ResponseBody
    public String userPartnerDel(@PathVariable String id) {
        try {
            // 협력사인지 확인
            UserDto partner = userService.getUserById(id);
            if (partner == null || partner.getRole() != 2) {
                return "fail";
            }
            
            int result = userService.deleteUser(id);
            if (result > 0) {
                return "success";
            } else {
                return "fail";
            }
        } catch (Exception e) {
            return "error";
        }
    }
}
