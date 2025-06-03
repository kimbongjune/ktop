package net.ktop.ktop.module.util;

import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import nl.captcha.Captcha;

@Controller
@RequestMapping("/captcha")
public class CaptchaController {

	@RequestMapping(value="/captcha.jpg", method=RequestMethod.GET)
    public void getCaptcha(HttpServletRequest request, HttpSession session, HttpServletResponse response) throws IOException {
        // 캡차 생성
        Captcha captcha = new Captcha.Builder(200, 50)
                .addText()                  // 기본 문자
                .addBackground()           // 배경 추가
                .addNoise()                // 노이즈 추가
                .build();

        // 세션에 정답 저장
        session.setAttribute("captcha_answer", captcha.getAnswer());

        // 응답 설정 및 출력
        response.setContentType("image/jpeg");
        boolean result = ImageIO.write(captcha.getImage(), "png", response.getOutputStream());
        System.out.println("ImageIO write result: " + result);
    }
    
    @ResponseBody
    @RequestMapping(value="/check", method=RequestMethod.GET)
    public ResponseEntity<?> isRight(HttpSession session, @RequestParam("code") String code) {
        String answer = (String)session.getAttribute("captcha_answer");
        System.out.println(answer);
        System.out.println(code);
        if(code.equals(answer)) {
        	return ResponseEntity.ok("success");
        }
        return ResponseEntity.ok("fail");
    }
}