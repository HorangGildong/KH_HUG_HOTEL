package kr.iei.hotel.member.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.service.MemberGetService;
import kr.iei.hotel.member.service.MemberService;
import kr.iei.hotel.member.service.MemberUpdateService;

@Controller
public class MemberSearchController {
	
	@Autowired
	private MemberService memberEmailService;

	@Autowired
	private MemberGetService memberGetService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private MemberUpdateService memberUpdateService;
	
	@GetMapping("/searchIds")
	public String searchIdsPage() {
		return "/member/searchIds";
	}
	
	@GetMapping("/searchPassword")
	public String searchPasswordPage() {
		return "/member/searchPassword";
	}
	
	@ResponseBody
	@GetMapping("/searchIds/searchIds")
	public List<MemberDto> searchIds(@RequestParam("name") String memberName, @RequestParam("phone") String memberPhone) {
		return memberGetService.getMemberDtoListByNameAndPhone(memberName, memberPhone);
	}
	
	@ResponseBody
	@GetMapping("/searchPassword/searchId")
	public boolean isExistingId(@RequestParam("email") String memberEmail, HttpSession codeSession) {
		boolean isExistingId = (memberGetService.getMemberDtoByEmail(memberEmail) != null);
		if(isExistingId) {
			memberEmailService.setCodeSession(codeSession);
			memberEmailService.sendCodeEmail(memberEmail, codeSession);
		}
		return isExistingId;
	}

	@ResponseBody
	@GetMapping("/searchPassword/compareCode")
	public boolean isMatchingCode(@RequestParam("code") String code, @RequestParam("email") String memberEmail, HttpSession codeSession) {
		boolean isMatchingCode = code.equals((String) codeSession.getAttribute("code"));
		if(isMatchingCode) {
			codeSession.invalidate();
			String password = memberEmailService.createPassword();
			memberEmailService.sendPasswordEmail(memberEmail, password);
			password = memberService.passwordEncode(password);
			memberUpdateService.changePassword(memberEmail, password);
		}
		return isMatchingCode;
	}

}
