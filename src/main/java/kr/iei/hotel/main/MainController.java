package kr.iei.hotel.main;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class MainController {

	@RequestMapping(value="/", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView main() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");		
		return mv;		
	}
	
	@RequestMapping(value="/notice", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView aboutus() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("notice/notice");		
		return mv;		
	}
	
	
}
