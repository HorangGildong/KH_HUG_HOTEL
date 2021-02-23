package kr.iei.hotel.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.iei.hotel.member.service.MemberService;

@Controller
public class memberSearchController {

	@Autowired
	MemberService memberService;
	
	@GetMapping("/searchIds")
	public String searchId() {
		return "/member/searchIds";
	}
	
	@GetMapping("/searchIds/search")
	@ResponseBody
	public List<String> searchIds(@RequestParam("name") String memberName, @RequestParam("phone") String memberPhone) {
		List<String> list = memberService.searchIds(memberName, memberPhone);
		for(String s : list) {
			System.out.println(s);
		}
		return memberService.searchIds(memberName, memberPhone);
	}
	
}
