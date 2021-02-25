package kr.iei.hotel.member.controller;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	@GetMapping("/loginFailure")
	public String loginFailure(Model model) {
		model.addAttribute("loginFailure", true);
		return "/member/login";		
	}
	
	@GetMapping("/pwChange")
	public String pwChange() {
		return "/myPage/updateMember";
	}
	
	@GetMapping("/noPwChange")
	public String noPwChange(Authentication authentication) {
		String memberId = authentication.getName();
		Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
		memberService.updatePwChangeDate(memberId);
		autoLogin(memberId, authorities);
		return "redirect:/";
	}
	
	public void autoLogin(String memberId, Collection<? extends GrantedAuthority> authorities) {
		UserDetails userDetails = principalDetailsService.loadUserByUsername(memberId);
		Authentication newAuthentication = new UsernamePasswordAuthenticationToken(userDetails, null, authorities);
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

}
