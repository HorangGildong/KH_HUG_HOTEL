package kr.iei.hotel.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
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
	
	@GetMapping("/myPage")
	public String myPage(Model model) {
		MemberDto memberDto = memberService.getSessionMemberDto();
		model.addAttribute(memberDto);
		return "/member/myPage";
	}	
	
	@PostMapping("/update")
	public String update(MemberDto memberDto, Model model) {
		System.out.println(memberDto);
		int count = memberUpdateService.update(memberDto);
		System.out.println(count);
		model.addAttribute("isUpdated", count>0);
		return "/member/myPage";
	}
	
	@GetMapping("/changePassword")
	public String changePassword() {
		return "/member/changePassword";
	}
	
	@PostMapping("/changePassword")
	public String change(String memberPassword, String newPassword, Model model) {
		MemberDto memberDto = memberService.getSessionMemberDto();
		boolean isPasswordConfirm = memberService.isPasswordConfirm(memberPassword, memberDto.getMemberPassword());
		if (isPasswordConfirm) {
			memberUpdateService.changePassword(memberDto.getMemberEmail(), newPassword);
		}
		model.addAttribute("isPasswordConfirm", isPasswordConfirm);
		return "/member/changePassword";
	}
	
	@GetMapping("/unRegister")
	public String unRegister() {
		return "/member/unRegister";
	}
	
	@PostMapping("/unRegister")
	public String unReg(String memberPassword, Model model) {
		MemberDto memberDto = memberService.getSessionMemberDto();
		boolean isPasswordConfirm = memberService.isPasswordConfirm(memberPassword, memberDto.getMemberPassword());
		if (isPasswordConfirm) {
			memberUpdateService.deleteReply(memberDto);
			memberUpdateService.unRegister(memberDto);
			SecurityContextHolder.clearContext();
		}
		model.addAttribute("isPasswordConfirm", isPasswordConfirm);
		System.out.println(isPasswordConfirm);
		return "/member/unRegister";
	}
	
}
