package kr.iei.hotel.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberLoginController {
	
	@RequestMapping("/signUp")
	public String signUp() {
		return "/member/signUp";
	}
}
