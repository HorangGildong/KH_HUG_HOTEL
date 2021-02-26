package kr.iei.hotel.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;

import kr.iei.hotel.member.dto.MemberEmailDto;
import kr.iei.hotel.member.service.MemberEmailService;
import kr.iei.hotel.member.service.MemberService;

@Controller
public class MemberEmailController {

	@Autowired
	private MemberEmailService memberEmailService;
	
	@Autowired
	private MemberService memberService;
	
	@Value("${spring.mail.username}")
	private String senderAddress;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	private String title1 = "(HUG-HOTEL) 인증번호를 알려드립니다.";
	private String message1 = "홈페이지에서 다음의 인증번호를 입력하시기 바랍니다.. 인증번호 : ";
	
	private String title2 = "(HUG-HOTEL) 비밀번호가 변경되었습니다.";
	private String message2 = "홈페이지에서 다음의 임시비밀번호로 접속하시기 바랍니다. 임시비밀번호 : ";
	
	
    public void sendEmailRandonNumber(HttpServletRequest req, MemberEmailDto memberEmailDto, String memberEmail) {
    	HttpSession verifiSession = req.getSession(true);
    	verifiSession.invalidate();
    	verifiSession = req.getSession(true);
    	verifiSession.setMaxInactiveInterval(3*60);
    	String randomNumber = RandomStringUtils.random(6, 33, 125, false, true);
//    	System.out.println("test-1 : " + randomNumber);
    	verifiSession.setAttribute("randomNumber", randomNumber);
    	memberEmailDto =  new MemberEmailDto(senderAddress, memberEmail,
    			title1, message1 + (String) verifiSession.getAttribute("randomNumber"));
    	memberEmailService.sendEmail(memberEmailDto);
    }
    
    public void sendEmailPassword(HttpSession verifiSession, MemberEmailDto memberEmailDto, String memberId, String memberEmail) {
    	verifiSession.invalidate();
    	String rawRandomPassword = RandomStringUtils.random(10, 33, 125, false, false);
    	memberEmailDto =  new MemberEmailDto(senderAddress, memberEmail, title2, message2 + rawRandomPassword);
    	memberEmailService.sendEmail(memberEmailDto);
    	String password = passwordEncoder.encode(rawRandomPassword);
    	memberService.changePassword(password, memberId);
//    	System.out.println("test-2 : " + password);
    }
    
}
