package kr.iei.hotel.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.iei.hotel.member.config.auth.PrincipalDetails;
import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.service.MemberService;
import kr.iei.hotel.member.service.MemberUpdateService;

@Controller
public class MemberLoginController {
	
	/*
	 * 1순위 : 관련 컨트롤러에 맵핑된 주소
	 * 2순위 : resource/static
	 */
	
	@Autowired
	private MemberUpdateService memberUpdateService;
	
	@Autowired
	private MemberService memberService;
	
	// loginPage
	@GetMapping("/login")
	public String loginPage() {
		return "/member/login";
	}

	@GetMapping("/emailLogin")
	public String emailLoginPage() {
		return "/member/emailLogin";
	}
	
	@PostMapping("/emailLogin")
	public String emailLoginPage(String memberEmail, Model model) {
		model.addAttribute("memberEmail", memberEmail);
		return "/member/emailLogin";
	}
	
	@GetMapping("/loginFailure")
	public String loginFailure(Model model) {
		model.addAttribute("loginFailure", true);
		return "/member/emailLogin";
	}
	
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/changePw")
	public String changePw() {
		return "/myPage/updateMember";
	}
	
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/changePwLater")
	public String changePwLater() {
		memberUpdateService.updatePwChangeDate(memberService.getSessionMemberDto());
		return "redirect:/";
	}
	
	@GetMapping("/login/oAuth2")
	public String oAuth2Login(@AuthenticationPrincipal PrincipalDetails userDetails, RedirectAttributes redirectAttributes) {
		MemberDto memberDto = userDetails.getMemberDto();
		if(memberDto.getMemberRole().equals("ROLE_ASSOCIATE")) {
			redirectAttributes.addFlashAttribute("email", new String(memberDto.getMemberEmail()));
			redirectAttributes.addFlashAttribute("key", new String(memberDto.getMemberKey()));
			SecurityContextHolder.clearContext();
			return "redirect:/join/oAuth2";
		} else {
			return "redirect:/";
		}
	}
	
}
