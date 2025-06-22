package net.ktop.ktop.module.util;

import java.security.SecureRandom;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import net.ktop.ktop.egov.EgovMessageSource;


@Service
public class EmailService {
    
    private final JavaMailSender mailSender;
    private final EgovMessageSource egovMessageSource;
        
    @Autowired
    public EmailService(JavaMailSender mailSender, EgovMessageSource egovMessageSource) {
		this.mailSender = mailSender;
		this.egovMessageSource = egovMessageSource;
	}

	public String sendSignUpMail(String to){
        String code = generateCode();
        
        String mail = egovMessageSource.getMessage("email.sender");

        MimeMessage mimeMessage = mailSender.createMimeMessage();
        try {
        MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, false, "UTF-8");
			helper.setTo(to);
			helper.setFrom(mail); // 필수! username과 동일하게
	        helper.setSubject("[건축자재포털] 인증번호 안내");
	        helper.setText("인증번호는 " + code + " 입니다.", false);

	        mailSender.send(mimeMessage);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return code;
    }
	
	public void sendIdFindMail(String to, String id){
        String mail = egovMessageSource.getMessage("email.sender");

        MimeMessage mimeMessage = mailSender.createMimeMessage();
        try {
        MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, false, "UTF-8");
			helper.setTo(to);
			helper.setFrom(mail);
	        helper.setSubject("[건축자재포털] 아이디 찾기 안내");
	        helper.setText("찾으시는 아이디는 " + id + " 입니다.", false);

	        mailSender.send(mimeMessage);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
	
	public void sendPwFindMail(String to, String pw){
        String mail = egovMessageSource.getMessage("email.sender");

        MimeMessage mimeMessage = mailSender.createMimeMessage();
        try {
        MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, false, "UTF-8");
			helper.setTo(to);
			helper.setFrom(mail);
	        helper.setSubject("[건축자재포털] 비밀번호 찾기 안내");
	        helper.setText("임시 비밀번호는 " + pw + " 입니다.", false);

	        mailSender.send(mimeMessage);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

    public String generateCode() {
        String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        StringBuilder sb = new StringBuilder();
        SecureRandom random = new SecureRandom();

        for (int i = 0; i < 8; i++) {
            sb.append(chars.charAt(random.nextInt(chars.length())));
        }
        return sb.toString();
    }
}