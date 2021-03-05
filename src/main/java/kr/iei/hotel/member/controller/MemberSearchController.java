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
	private MemberUpdateService memberUpdateService;
	
	@GetMapping("/searchIds")
	public String searchId() {
		return "/member/searchIds";
	}
	
	@GetMapping("/searchPassword")
	public String searchPassword() {
		return "/member/searchPassword";
	}
	
	@ResponseBody
	@GetMapping("/searchIds/searchIds")
	public List<MemberDto> searchIds(@RequestParam("name") String memberName, @RequestParam("phone") String memberPhone) {
		return memberGetService.getMemberDtoListByNameAndPhone(memberName, memberPhone);
	}
	
	@ResponseBody
	@GetMapping("/searchPassword/searchId")
	public boolean searchId(@RequestParam("email") String memberEmail, HttpSession codeSession) {
		boolean isId = (memberGetService.getMemberDtoByEmail(memberEmail) != null);
		if(isId) {
			memberEmailService.setCodeSession(codeSession);
			memberEmailService.sendCodeEmail(memberEmail, codeSession);
		}
		return isId;
	}

	@ResponseBody
	@GetMapping("/searchPassword/compareCode")
	public boolean compareCode(@RequestParam("code") String code, @RequestParam("email") String memberEmail, HttpSession codeSession) {
		boolean isCode = code.equals((String) codeSession.getAttribute("code"));
		if(isCode) {
			codeSession.invalidate();
			String password = memberEmailService.createPassword();
			memberEmailService.sendPasswordEmail(memberEmail, password);
			memberUpdateService.changePassword(memberEmail, password);
		}
		return isCode;
	}

}
