package kr.iei.hotel.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.iei.hotel.member.dto.MemberIdDto;
import kr.iei.hotel.member.service.MemberService;

@Controller
public class memberSearchController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping("/searchIds")
	public String searchId() {
		return "/member/searchIds";
	}
	
	@GetMapping("/searchPassword")
	public String searchPassword() {
		return "/member/searchPassword";
	}
	
	@GetMapping("/searchIds/search")
	@ResponseBody
	public List<MemberIdDto> searchIds(@RequestParam("name") String memberName, @RequestParam("phone") String memberPhone) {
		return memberService.searchIds(memberName, memberPhone);
	}
	
}
