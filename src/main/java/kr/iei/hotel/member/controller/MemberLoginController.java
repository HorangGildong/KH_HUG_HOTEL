package kr.iei.hotel.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.iei.hotel.member.config.auth.PrincipalDetails;
import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.dto.MemberJoinFormDto;
import kr.iei.hotel.member.service.MemberService;

@Controller
public class MemberLoginController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	/*
	 * 1순위 : 관련 컨트롤러에 맵핑된 주소
	 * 2순위 : resource/static
	 */
	
	// loginPage
	@GetMapping("/login")
	public String loginPage() {		
		return "/member/login";		
	}

	@GetMapping("/auth")	// TEST
	@ResponseBody
	public String str(@AuthenticationPrincipal PrincipalDetails principal) {
		return ("로그인 사용자 : " + principal.getNick());
	}
	
	// logout
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "/";
    }

}
