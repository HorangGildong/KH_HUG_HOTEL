package kr.iei.hotel.member.controller;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.iei.hotel.member.config.auth.PrincipalDetails;
import kr.iei.hotel.member.dto.MemberEmailDto;
import kr.iei.hotel.member.service.MemberEmailService;

@Controller
public class MemberEmailController {

	@Autowired
	private MemberEmailService memberEmailService;
	
	@Value("${spring.mail.username}")
	private String senderAddress;
	
	private String title = "HUG_HOTEL_TITLE";
	private String Message = "finalProjectJavaMailTestMessage";
	
	
    @GetMapping("/sendRandomNumber")
    @ResponseBody
    public String sendEmail(HttpSession verifiSession, Random random, MemberEmailDto memberEmailDto,
    		@AuthenticationPrincipal PrincipalDetails userDetails) {
    	verifiSession.setMaxInactiveInterval(3*60);
    	verifiSession.setAttribute("randomNumber", random.nextInt(899999)+100000);
    	memberEmailDto =  new MemberEmailDto(senderAddress, userDetails.getEmail(),
    			title, Message + verifiSession.getAttribute("randomNumber"));
//    	memberEmailService.sendEmail(memberEmailDto);
    	return userDetails.getEmail();
    }
    
    @GetMapping("/sendPassword")
    @ResponseBody
    public void sendPassword() {
    	
    }
    
    
    
}
