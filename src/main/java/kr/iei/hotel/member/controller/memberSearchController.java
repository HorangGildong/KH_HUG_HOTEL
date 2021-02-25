package kr.iei.hotel.member.controller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.iei.hotel.member.config.auth.PrincipalDetails;
import kr.iei.hotel.member.dto.MemberEmailDto;
import kr.iei.hotel.member.dto.MemberIdDto;
import kr.iei.hotel.member.service.MemberService;

@Controller
public class memberSearchController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private MemberEmailController memberEmailController;
	
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
	public List<MemberIdDto> searchIds(@RequestParam("name") String memberName,
			@RequestParam("phone") String memberPhone) {
		return memberService.searchIds(memberName, memberPhone);
	}
	
	@ResponseBody
	@GetMapping("/searchPassword/searchId")
	public boolean searchId(@RequestParam("id") String memberId,
			@RequestParam("email") String memberEmail,
			HttpServletRequest req, Random random, MemberEmailDto memberEmailDto) {
		boolean isId = !(memberService.searchId(memberId, memberEmail) == 0);
		if(isId) {
			memberEmailController.sendEmailRandonNumber(req, memberEmailDto, memberEmail);
		}
		return isId;
	}

	@ResponseBody
	@GetMapping("/searchPassword/compareRandomNumber")
	public boolean searchId(@RequestParam("randomNumber") String randomNumber,
			@RequestParam("id") String memberId,
			@RequestParam("email") String memberEmail,
			HttpSession verifiSession, Random random, MemberEmailDto memberEmailDto) {
		boolean isRandom = randomNumber.equals((String) verifiSession.getAttribute("randomNumber"));
		if(isRandom) {
			memberEmailController.sendEmailPassword(verifiSession, memberEmailDto, memberId, memberEmail);
		}
		return isRandom;
	}

}
