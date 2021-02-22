package kr.iei.hotel.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.iei.hotel.member.dto.MemberJoinFormDto;
import kr.iei.hotel.member.dto.MemberOAuth2JoinFormDto;
import kr.iei.hotel.member.service.MemberService;

@Controller
public class MemberJoinController {
	
	@Autowired
	private MemberService memberService;

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
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
		return "/member/login";
	}
	
	@GetMapping("/Join/oAuth2")
	public String oAuthJoinPage(@AuthenticationPrincipal OAuth2User oAuth2user, Model model) {
		model.addAttribute("email", oAuth2user.getAttribute("email"));
		System.out.println("ok");
		return "/member/oAuth2Join";
	}
	
	@PostMapping("/Join/oAuth2")
	public String oAuth2Join(@AuthenticationPrincipal OAuth2User oAuth2user,
			MemberOAuth2JoinFormDto memberOAuth2JoinFormDto) {
		memberOAuth2JoinFormDto.setMemberEmail(oAuth2user.getAttribute("email"));
		memberOAuth2JoinFormDto.setMemberKey(oAuth2user.getAttribute("sub"));
		memberService.oAuth2Join(memberOAuth2JoinFormDto);
		return "redirect:/";
	}
	
	
//	@PostMapping("/oAuthJoin")
//	public String oAuthJoin(MemberJoinFormDto memberJoinFormDto, @AuthenticationPrincipal OAuth2User oAuth2user) {
//		memberJoinFormDto.setMemberPassword(passwordEncoder.encode("password"));
//		memberJoinFormDto.setMemberEmail(oAuth2user.getAttribute("email"));
//		memberService.join(memberJoinFormDto);
//		return "/member/login";
//	}
		
	@GetMapping("/join/idCheck")
	@ResponseBody
	public boolean isIdCheck(@RequestParam("id") String memberId) {
		return !(memberService.checkId(memberId)==0);
	}
	
	@GetMapping("/join/emailCheck")
	@ResponseBody
	public boolean isEmailCheck(@RequestParam("email") String memberEmail) {
		return !(memberService.checkEmail(memberEmail)==0);
	}
	
	@GetMapping("/join/nickCheck")
	@ResponseBody
	public boolean isNickCheck(@RequestParam("nick") String memberNick) {
		return !(memberService.checkNick(memberNick)==0);
	}
}
