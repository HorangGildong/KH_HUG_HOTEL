package kr.iei.hotel.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.iei.hotel.member.dto.MemberJoinFormDto;
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
	
}
