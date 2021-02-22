package kr.iei.hotel.member.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.iei.hotel.member.config.auth.PrincipalDetails;

@Controller
public class MemberLoginController {
	
	/*
	 * 1순위 : 관련 컨트롤러에 맵핑된 주소
	 * 2순위 : resource/static
	 */
	
	// loginPage
	@GetMapping("/login")
	public String loginPage() {
		return "/member/login";		
	}

	@GetMapping("/login/oAuth2")
	public String oauth2Login(@AuthenticationPrincipal PrincipalDetails userDetails) {
		System.out.println("ok? : " + userDetails.getMemberDto().getMemberId());
		System.out.println("ok? : " + userDetails.getMemberDto().getMemberRole());
		if(userDetails.getMemberDto().getMemberRole().equals("ROLE_ASSOCIATE")) {
			return "redirect:/Join/oAuth2";
		} else {
			System.out.println("okok");
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
//		SecurityContextHolder.clearContext();
		System.out.println(principalDetails);
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
