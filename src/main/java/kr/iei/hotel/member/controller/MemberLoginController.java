package kr.iei.hotel.member.controller;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.iei.hotel.member.dto.AuthInfoDto;
import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.dto.MemberLoginFormDto;
import kr.iei.hotel.member.service.MemberService;

@Controller
public class MemberLoginController {
	
	@Autowired
	private MemberService memberService;
	
	/*
	 * 1순위 : 관련 컨트롤러에 맵핑된 주소
	 * 2순위 : resource/static
	 */
	
	// loginPage
	@GetMapping("/login")
	public String loginPage() {		
		return "/member/login";		
	}
	
	// login
	@PostMapping("/login")
	public String login(MemberLoginFormDto memberLoginFormDto, HttpSession session, Model model) {
//		AuthInfoDto authInfoDto = memberService.getAuthInfoDto(memberLoginFormDto);
		Optional<MemberDto> memberDto = memberService.getMemberDto(memberLoginFormDto);
//		session.setAttribute("authInfoDto", authInfoDto);
		model.addAttribute("test", memberDto);
//		model.addAttribute("test", session.getAttribute("authInfoDto"));
		return "/member/login";
	}
	
	// logout
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "/";
    }

}
