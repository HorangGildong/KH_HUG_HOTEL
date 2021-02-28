package kr.iei.hotel.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.iei.hotel.member.config.auth.PrincipalDetails;
import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.service.MemberLoginService;

@Controller
public class MemberLoginController {
	
	/*
	 * 1순위 : 관련 컨트롤러에 맵핑된 주소
	 * 2순위 : resource/static
	 */
	
	@Autowired
	private MemberLoginService memberLoginService;
	
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
	
	@GetMapping("/changePw")
	public String changePw() {
		return "/myPage/updateMember";
	}
	
	@GetMapping("/changePwLater")
	public String changePwLater() {
		memberLoginService.updatePwChangeDate();
		return "redirect:/";
	}
	
	@GetMapping("/login/oAuth2")
	public String oauth2Login(@AuthenticationPrincipal PrincipalDetails userDetails, Model model) {
		MemberDto memberDto = userDetails.getMemberDto();
		if(memberDto.getMemberRole().equals("ROLE_ASSOCIATE")) {
			model.addAttribute("email", new String(memberDto.getMemberEmail()));
			model.addAttribute("key", new String(memberDto.getMemberKey()));
			SecurityContextHolder.clearContext();
			return "/member/joinOAuth2";
		}
		return "redirect:/";
	}
}
