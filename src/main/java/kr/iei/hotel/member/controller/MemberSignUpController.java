package kr.iei.hotel.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.dto.MemberSignUpFormDto;

@Controller
public class MemberSignUpController {

//	private MemberService memberService;
//	
//	@Autowired
//	public MemberSignUpController(MemberService memberService) {
//		this.memberService = memberService;
//	}
	
	@GetMapping("/signUp")
	public String signUpPage() {
		return "/member/signUp";
	}
	
	@PostMapping("/signUp")
	public String signUp(MemberSignUpFormDto memberSignUpFormDto) {

		
		return "/member/signUp";
	}
	
}
