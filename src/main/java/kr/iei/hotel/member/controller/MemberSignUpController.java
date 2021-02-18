//package kr.iei.hotel.member.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//
//@Controller
//public class MemberSignUpController {
//
//	private MemberService memberService;
//	
//	@Autowired
//	public MemberSignUpController(MemberService memberService) {
//		this.memberService = memberService;
//	}
//	
//	@GetMapping("/signUp")
//	public String signUp() {
//		return "/member/signUp";
//	}
//	
//	@PostMapping("/signUp")
//	public String create(MemberForm memberForm) {
//		Member member = new Member();
//
//	}
//	
//}
