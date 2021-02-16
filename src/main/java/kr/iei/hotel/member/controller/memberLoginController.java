package kr.iei.hotel.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class memberLoginController {
	
	//테스트
	@RequestMapping(value="/member/login", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView login1() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/login");		
		return mv;		
	}
	
	//테스트
	@RequestMapping(value="/login2", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView login2() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/login");		
		return mv;		
	}
	
}
