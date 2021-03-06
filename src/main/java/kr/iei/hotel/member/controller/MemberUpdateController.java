package kr.iei.hotel.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.service.MemberService;
import kr.iei.hotel.member.service.MemberUpdateService;

@Controller
public class MemberUpdateController {

	@Autowired
	private MemberUpdateService memberUpdateService;
	
	@Autowired
	private MemberService memberService;
	
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/myPage")
	public String myPage(Model model) {
		MemberDto memberDto = memberService.getSessionMemberDto();
		model.addAttribute(memberDto);
		return "/member/myPage";
	}	
	
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/update")
	public String update(MemberDto memberDto, Model model) {
		int count = memberUpdateService.update(memberDto);
		model.addAttribute("isUpdated", count>0);
		memberService.autoLogin(memberDto);
		return "/member/myPage";
	}
	
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/changePassword")
	public String changePasswordPage() {
		return "/member/changePassword";
	}
	
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/changePassword")
	public String changePassword(String memberPassword, String newPassword, Model model) {
		MemberDto memberDto = memberService.getSessionMemberDto();
		boolean isMatchingPassword = memberService.isMatchingPassword(memberPassword, memberDto.getMemberPassword());
		if (isMatchingPassword) {
			String newEncodedPassword = memberService.passwordEncode(newPassword);
			memberUpdateService.changePassword(memberDto.getMemberEmail(), newEncodedPassword);
		}
		memberService.autoLogin(memberDto);
		model.addAttribute("isMatchingPassword", isMatchingPassword);
		return "/member/changePassword";
	}
	
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/unRegister")
	public String unRegisterPage() {
		return "/member/unRegister";
	}
	
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/unRegister")
	public String unRegister(String memberPassword, Model model) {
		MemberDto memberDto = memberService.getSessionMemberDto();
		boolean isMatchingPassword = memberService.isMatchingPassword(memberPassword, memberDto.getMemberPassword());
		System.out.println(isMatchingPassword);
		if (isMatchingPassword) {
			memberUpdateService.deleteReply(memberDto);
			memberUpdateService.unRegister(memberDto);
			SecurityContextHolder.clearContext();
		}
		model.addAttribute("isMatchingPassword", isMatchingPassword);
		return "/member/unRegister";
	}
	
}
