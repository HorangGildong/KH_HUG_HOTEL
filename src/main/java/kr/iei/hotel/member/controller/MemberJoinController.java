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
import kr.iei.hotel.member.service.MemberGetDtoService;
import kr.iei.hotel.member.service.MemberJoinService;
import kr.iei.hotel.member.service.MemberLoginService;

@Controller
public class MemberJoinController {

	@Autowired
	private MemberGetDtoService memberGetDtoService;

	@Autowired
	private MemberJoinService memberJoinService;

	@Autowired
	private MemberLoginService memberLoginService;
	
	// joinPage
	@GetMapping("/join")
	public String joinPage() {		
		return "/member/join";
	}
	
	// join
	@PostMapping("/join")
	public String join(MemberJoinFormDto memberJoinFormDto, Model model) {
		memberJoinService.join(memberJoinFormDto);
		MemberDto memberDto = memberGetDtoService.getMemberDtoById(memberJoinFormDto.getMemberId());
		memberLoginService.autoLogin(memberDto);
		model.addAttribute("isFirstLogin", true);
		return "/index";
	}

	@GetMapping("/join/oAuth2")
	public String oAuthJoinPage(@RequestParam("email") String email, @RequestParam("key") String key, Model model) {
		model.addAttribute("email", email);
		model.addAttribute("key", key);
		return "/member/joinOAuth2";
	}

	@PostMapping("/Join/oAuth2")
	public String oAuth2Join(MemberOAuth2JoinFormDto memberOAuth2JoinFormDto, Model model) {
		memberJoinService.join(memberOAuth2JoinFormDto);
		MemberDto memberDto = memberGetDtoService.getMemberDtoById(memberOAuth2JoinFormDto.getMemberId());
		memberLoginService.autoLogin(memberDto);
		model.addAttribute("isFirstLogin", true);
		return "/index";
	}

	@ResponseBody
	@GetMapping("/join/idCheck")
	public boolean isIdCheck(@RequestParam("id") String memberId) {
		return !(memberJoinService.checkId(memberId)==0);
	}
	
	@ResponseBody
	@GetMapping("/join/nickCheck")
	public boolean isNickCheck(@RequestParam("nick") String memberNick) {
		return !(memberJoinService.checkNick(memberNick)==0);
	}
	
}
