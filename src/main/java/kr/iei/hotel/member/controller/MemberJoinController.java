package kr.iei.hotel.member.controller;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.dto.MemberJoinFormDto;
import kr.iei.hotel.member.dto.MemberOAuth2JoinFormDto;
import kr.iei.hotel.member.service.MemberService;

@Controller
public class MemberJoinController {
	
	@Autowired
	private MemberService memberService;

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private MemberLoginController memberLoginController;
	
	// joinPage
	@GetMapping("/join")
	public String joinPage() {		
		return "/member/join";
	}
	
	// join
	@PostMapping("/join")
	public String join(MemberJoinFormDto memberJoinFormDto) {
		String rawPassword = memberJoinFormDto.getMemberPassword();
		memberJoinFormDto.setMemberPassword(passwordEncoder.encode(rawPassword));
		memberService.join(memberJoinFormDto);
		MemberDto memberDto = memberService.searchById(memberJoinFormDto.getMemberId());
		Collection<GrantedAuthority> authorities = new ArrayList<>();
		authorities.add(() -> memberDto.getMemberRole());
		memberLoginController.autoLogin(memberDto.getMemberId(), authorities);
		return "redirect:/";
	}

	@GetMapping("/join/oAuth2")
	public String oAuthJoinPage(@RequestParam("email") String email, @RequestParam("key") String key, Model model) {
		model.addAttribute("email", email);
		model.addAttribute("key", key);
		return "/member/oAuth2Join";
	}
	
	@PostMapping("/Join/oAuth2")
	public String oAuth2Join(MemberOAuth2JoinFormDto memberOAuth2JoinFormDto) {
		memberOAuth2JoinFormDto.setMemberId("user_" + memberOAuth2JoinFormDto.getMemberKey());
		memberService.oAuth2Join(memberOAuth2JoinFormDto);
		MemberDto memberDto = memberService.searchByKey(memberOAuth2JoinFormDto.getMemberKey());
		Collection<GrantedAuthority> authorities = new ArrayList<>();
		authorities.add(() -> memberDto.getMemberRole());
		memberLoginController.autoLogin(memberDto.getMemberId(), authorities);
		return "redirect:/";
	}
		
	@GetMapping("/join/idCheck")
	@ResponseBody
	public boolean isIdCheck(@RequestParam("id") String memberId) {
		return !(memberService.checkId(memberId)==0);
	}
	
	@GetMapping("/join/nickCheck")
	@ResponseBody
	public boolean isNickCheck(@RequestParam("nick") String memberNick) {
		return !(memberService.checkNick(memberNick)==0);
	}
}
