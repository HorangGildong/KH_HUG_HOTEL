package kr.iei.hotel.member.controller;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.iei.hotel.member.config.auth.PrincipalDetails;
import kr.iei.hotel.member.config.auth.PrincipalDetailsService;
import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.service.MemberService;

@Controller
public class MemberLoginController {
	
	/*
	 * 1순위 : 관련 컨트롤러에 맵핑된 주소
	 * 2순위 : resource/static
	 */
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private PrincipalDetailsService principalDetailsService;
	
	// loginPage
	@GetMapping("/login")
	public String loginPage() {
		return "/member/login";		
	}

	@PostMapping("/login")
	public String idLoginPage(String memberId, Model model) {
		model.addAttribute("memberId", memberId);
		return "/member/login";		
	}
	
	// a
	@GetMapping("/a")
	@ResponseBody
	public PrincipalDetails a(@AuthenticationPrincipal PrincipalDetails userDetails) {
		return userDetails;
	}
	
	@GetMapping("/pwChange")
	@ResponseBody
	public String pwChange() {
		return "비밀번호 변경하는 페이지로 보낼거임";
	}
	
	@GetMapping("/noPwChange")
	public String noPwChange(Authentication authentication) {
		String memberId = authentication.getName();
		memberService.updatePwChangeDate(memberId);
		autoLogin(memberId, "ROLE_REGURAL");
		return "redirect:/";
	}
	
	public void autoLogin(String memberId, String memberRole) {
		UserDetails userDetails = principalDetailsService.loadUserByUsername(memberId);
		Collection<GrantedAuthority> collect = new ArrayList<>();
		collect.add(() -> memberRole);
		Authentication newAuthentication = new UsernamePasswordAuthenticationToken(userDetails, null, collect);
		SecurityContextHolder.getContext().setAuthentication(newAuthentication);	
	}
	
	@GetMapping("/login/oAuth2")
	public String oauth2Login(RedirectAttributes redirect, @AuthenticationPrincipal PrincipalDetails userDetails) {
		MemberDto memberDto = userDetails.getMemberDto();
		if(memberDto.getMemberRole().equals("ROLE_ASSOCIATE")) {
			redirect.addAttribute("email", memberDto.getMemberEmail());
			redirect.addAttribute("key", memberDto.getMemberKey());
			SecurityContextHolder.clearContext();
			return "redirect:/join/oAuth2";
		}
		return "redirect:/";
	}



	@GetMapping("/test")	// TEST
	@ResponseBody
	public String test(
			Authentication authentication,
			@AuthenticationPrincipal PrincipalDetails userDetails,
			@AuthenticationPrincipal OAuth2User oAuth2user) {
		PrincipalDetails principalDetails = (PrincipalDetails) authentication.getPrincipal();
		OAuth2User oAuth2User = (OAuth2User) authentication.getPrincipal();
		SecurityContextHolder.clearContext();
		return ("authentication : <br>" + authentication + "<br><br>"
				+ "authentication.getPrincipal() : <br>" + authentication.getPrincipal() + "<br><br>"
				+ "userDetails : <br>" + userDetails + "<br><br>"
				+ "userDetails.getMemberDto() : <br>" + userDetails.getMemberDto() + "<br><br>"
				+ "(PrincipalDetails) authentication.getPrincipal() : <br>" + principalDetails + "<br><br>"
				+ "(PrincipalDetails) authentication.getPrincipal().getMemberDto : <br>" + principalDetails.getMemberDto() + "<br><br>"
				+ "(OAuth2User) authentication.getPrincipal() : <br>" + oAuth2User + "<br><br>"
				+ "(OAuth2User) authentication.getPrincipal().getAttributes() : <br>" + oAuth2User.getAttributes()
				);
	}
	
	@GetMapping("/test1")	// TEST
	@ResponseBody
	public String test1(
			Authentication authentication,
			@AuthenticationPrincipal PrincipalDetails userDetails) {
		System.out.println("/test 1===================");
		PrincipalDetails principalDetails = (PrincipalDetails) authentication.getPrincipal();
		System.out.println("authentication : " + principalDetails.getMemberDto());
		System.out.println("userDetails : " + userDetails.getMemberDto());
		return "세션 정보 확인하기";
	}
	
	@GetMapping("/test2")	// TEST oauth2
	@ResponseBody
	public String test2(
			Authentication authentication,
			@AuthenticationPrincipal OAuth2User oAuth2user) {
		System.out.println("/test 2===================");
		OAuth2User oAuth2User = (OAuth2User) authentication.getPrincipal();
		System.out.println("authentication : " + oAuth2User.getAttributes());
		System.out.println("oauth2user : " + oAuth2user.getAttributes());
		return "OAuth 세션 정보 확인하기";
	}

}
