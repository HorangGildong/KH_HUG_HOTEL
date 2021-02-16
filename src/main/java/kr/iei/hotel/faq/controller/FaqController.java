package kr.iei.hotel.faq.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.iei.hotel.faq.vo.FaqVo;
import kr.iei.hotel.notice.vo.NoticeVo;
import kr.iei.hotel.notice.vo.Page;

@RestController
public class FaqController {
	
	@Autowired
	kr.iei.hotel.faq.service.FaqService service;
	
	// ──────────────────────────────── 사용자 ────────────────────────────────
	@RequestMapping(value="/faqMain", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqMain(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");
				
		System.out.println("faq메인 check");
		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqMain");		
		return mv;		
	}

	@RequestMapping(value="/faqTotal", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqTotal(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");
				
		System.out.println("faqTotal메인 check");
		System.out.println(page.getTotListSize());
		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqTotal");		
		return mv;		
	}
	
	@RequestMapping(value="/faqGuide", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqGuide(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.faqGuide(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");
				
		System.out.println("faqGuide메인 check");
		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqGuide");		
		return mv;		
	}
	
	@RequestMapping(value="/faqRoom", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqRoom(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.faqRoom(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");
				
		System.out.println("faqRoom메인 check");
		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqRoom");		
		return mv;		
	}
	
	@RequestMapping(value="/faqDining", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqDining(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.faqDining(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");
				
		System.out.println("faqDining메인 check");
		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqDining");		
		return mv;		
	}
	
	@RequestMapping(value="/faqFacility", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqFacility(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.faqFacility(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");
				
		System.out.println("faqFacility메인 check");
		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqFacility");		
		return mv;		
	}
	
	@RequestMapping(value="/faqPayment", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqPayment(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.faqPayment(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");
				
		System.out.println("faqPayment메인 check");
		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqPayment");		
		return mv;		
	}
	
	@RequestMapping(value="/faqEtc", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqEtc(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.faqEtc(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");
				
		System.out.println("faqEtc메인 check");
		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqEtc");		
		return mv;		
	}
	// ──────────────────────────────── 관리자 ────────────────────────────────
	@RequestMapping(value="adminFaqInsert")
	public ModelAndView adminFaqInsert() {
		ModelAndView mv = new ModelAndView();
				
		mv.setViewName("faq_admin/adminFaqInsert");
		return mv;
	}
	
	@RequestMapping(value="adminFaqUpdate")
	public ModelAndView adminFaqUpdate() {
		ModelAndView mv = new ModelAndView();
				
		mv.setViewName("faq_admin/adminFaqUpdate");
		return mv;
	}
	
	
}
