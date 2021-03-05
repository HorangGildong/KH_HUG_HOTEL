package kr.iei.hotel.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.dto.MemberJoinFormDto;
import kr.iei.hotel.member.dto.MemberOAuth2JoinFormDto;
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
	public String join(MemberJoinFormDto memberJoinFormDto, Model model) {
		memberUpdateService.join(memberJoinFormDto);
		MemberDto memberDto = memberGetService.getMemberDtoByEmail(memberJoinFormDto.getMemberEmail());
		memberService.autoLogin(memberDto);
		model.addAttribute("isFirstLogin", true);
		return "/index";
	}
	
	@GetMapping("/join/oAuth2")
	public String oAuthJoinPage() {
		return "/member/joinOAuth2";
	}
	
	@PostMapping("/join/oAuth2")
	public String oAuth2Join(MemberOAuth2JoinFormDto memberOAuth2JoinFormDto, Model model) {		
		memberUpdateService.join(memberOAuth2JoinFormDto);
		model.addAttribute("isFirstLogin", true);
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
