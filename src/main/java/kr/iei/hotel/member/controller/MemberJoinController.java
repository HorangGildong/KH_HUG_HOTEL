package kr.iei.hotel.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.service.MemberGetService;
import kr.iei.hotel.member.service.MemberService;
import kr.iei.hotel.member.service.MemberUpdateService;

@Controller
public class MemberJoinController {

	@Autowired
	private MemberService memberService;

	@Autowired
	private MemberGetService memberGetService;
	
	@Autowired
	private MemberUpdateService memberUpdateService;
	
	// joinPage
	@GetMapping("/join")
	public String joinPage() {		
		return "/member/join";
	}

	// join
	@PostMapping("/join")
	public String join(MemberDto memberDto, Model model) {
		memberDto = memberService.passwordEncode(memberDto);
		int count = memberUpdateService.join(memberDto);
		memberService.autoLogin(memberDto);
		model.addAttribute("isFirstLogin", count > 0);
		return "/index";
	}
	
	@GetMapping("/join/oAuth2")
	public String oAuth2JoinPage() {
		return "/member/joinOAuth2";
	}
	
	@PostMapping("/join/oAuth2")
	public String oAuth2Join(MemberDto memberDto, Model model) {
		int count = memberUpdateService.joinOAuth2(memberDto);
		memberService.autoLogin(memberDto);
		model.addAttribute("isFirstLogin", count > 0);
		return "/index";
	}

	@ResponseBody
	@GetMapping("/join/emailCheck")
	public boolean isEmailCheck(@RequestParam("email") String memberEmail) {
		return (memberGetService.checkEmail(memberEmail) != 0);
	}
	
	@ResponseBody
	@GetMapping("/join/nickCheck")
	public boolean isNickCheck(@RequestParam("nick") String memberNick) {
		return (memberGetService.checkNick(memberNick) != 0);
	}
	
}
