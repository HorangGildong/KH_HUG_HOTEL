package kr.iei.hotel.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MemberLoginController {
	
	/*
	 * 1순위 : 관련 컨트롤러에 맵핑된 주소
	 * 2순위 : resource/static
	 */
	
	// loginPage
	@GetMapping(value="/login")
	public String login() {		
		return "/member/login";		
	}
	
	@PostMapping(value="/login")
	public String login2() {
		return "/member/login";
	}
	
	// login
}
