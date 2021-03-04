package kr.iei.hotel.member.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.support.RequestContextUtils;

import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.dto.MemberJoinFormDto;
import kr.iei.hotel.member.dto.MemberOAuth2JoinFormDto;
import kr.iei.hotel.member.service.MemberGetDtoService;
import kr.iei.hotel.member.service.MemberJoinService;
import kr.iei.hotel.member.service.MemberLoginService;

@Controller
public class MemberJoinController {

	@Autowired
	private MemberGetDtoService memberGetDtoService;

	@Autowired
	private MemberJoinService memberJoinService;

	@Autowired
	private MemberLoginService memberLoginService;
	
	// joinPage
	@GetMapping("/join")
	public String joinPage() {		
		return "/member/join";
	}

	// join
	@PostMapping("/join")
	public String join(MemberJoinFormDto memberJoinFormDto, Model model) {
		memberJoinService.join(memberJoinFormDto);
		MemberDto memberDto = memberGetDtoService.getMemberDtoByEmail(memberJoinFormDto.getMemberEmail());
		memberLoginService.autoLogin(memberDto);
		model.addAttribute("isFirstLogin", "isFirstLogin");
		return "/index";
	}
	
	@GetMapping("/join/oAuth2")
	public String oAuthJoinPage(HttpServletRequest request, Model model) {
		Map<String, ?> flashMap = RequestContextUtils.getInputFlashMap(request);
		System.out.println((String)flashMap.get("email"));
		System.out.println((String)flashMap.get("key"));
		return "/member/joinOAuth2";
	}
	
	@PostMapping("/join/oAuth2")
	public String oAuth2Join(MemberOAuth2JoinFormDto memberOAuth2JoinFormDto, Model model) {		
		memberJoinService.join(memberOAuth2JoinFormDto);
		MemberDto memberDto = memberGetDtoService.getMemberDtoByEmail(memberOAuth2JoinFormDto.getMemberEmail());
		memberLoginService.autoLogin(memberDto);
		model.addAttribute("isFirstLogin", "isFirstLogin");
		return "/index";
	}

	@ResponseBody
	@GetMapping("/join/emailCheck")
	public boolean isEmailCheck(@RequestParam("email") String memberEmail) {
		return !(memberJoinService.checkEmail(memberEmail)==0);
	}
	
	@ResponseBody
	@GetMapping("/join/nickCheck")
	public boolean isNickCheck(@RequestParam("nick") String memberNick) {
		return !(memberJoinService.checkNick(memberNick)==0);
	}
	
}
