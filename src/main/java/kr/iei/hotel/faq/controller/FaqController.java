package kr.iei.hotel.faq.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.iei.hotel.faq.vo.FaqVo;
import kr.iei.hotel.notice.vo.NoticeVo;
import kr.iei.hotel.notice.vo.Page;

@RestController
public class FaqController {
	
	@Autowired
	kr.iei.hotel.faq.service.FaqService service;
	
	// ────────────────────────────────────────────────── 사용자 ──────────────────────────────────────────────────
	/*--------------------------------- 전체조회 ---------------------------------*/
	@RequestMapping(value="/faqMain", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqMain(Page page) {
		ModelAndView mv = new ModelAndView();
		
		System.out.println("faq메인입니다.");
		
		mv.setViewName("faq/faqMain");		
		return mv;		
	}
	// ───────────────────────────────────────── 전체 메뉴 ─────────────────────────────────────────
	/*--------------------------------- 전체 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqTotal", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqTotal(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("전체 메뉴 입니다");
				
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqTotal");		
		return mv;		
	}		
	/*--------------------------------- 질문 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqTotalQt", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqTotalQt(Page page) {		
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.total_question_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("전체 메뉴 질문 검색 ");
				
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqTotal");		
		return mv;		
	}	
	/*--------------------------------- 내용 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqTotalAw", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqTotalAw(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.total_answer_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("전체 메뉴  답변 검색");
				
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqTotal");		
		return mv;		
	}

	// ───────────────────────────────────────── 이용안내 메뉴 ─────────────────────────────────────────
	/*--------------------------------- 이용안내 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqGuide", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqGuide(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.faqGuide(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");
				
		System.out.println("이용안내 메뉴 입니다");
		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqGuide");		
		return mv;		
	}
	/*--------------------------------- 제목 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqGuideQt", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqGuideQt(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.guide_question_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("이용안내 메뉴 질문 검색 ");
				
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqGuide");		
		return mv;		
	}	
	/*--------------------------------- 내용 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqGuideAw", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqGuideAw(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.guide_answer_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("이용안내 메뉴 답변 검색");
				
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqGuide");		
		return mv;		
	}
	
	
	// ───────────────────────────────────────── 객실 메뉴 ─────────────────────────────────────────
	/*--------------------------------- 객실 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqRoom", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqRoom(Page page) {
		ModelAndView mv = new ModelAndView();

		Map<String, Object> map = service.faqRoom(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");
				
		System.out.println("객실 메뉴 입니다");
		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqRoom");		
		return mv;		
	}
	/*--------------------------------- 제목 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqRoomQt", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqRoomQt(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.room_question_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("객실 메뉴 질문 검색");
				
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqRoom");		
		return mv;		
	}	
	/*--------------------------------- 내용 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqRoomAw", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqRoomAw(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.room_answer_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("객실 메뉴 답글 검색");
				
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqRoom");		
		return mv;		
	}
	
	// ───────────────────────────────────────── 다이닝 메뉴 ─────────────────────────────────────────
	/*--------------------------------- 다이닝 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqDining", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqDining(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.faqDining(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");
				
		System.out.println("다이닝 메뉴 입니다");
		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqDining");		
		return mv;		
	}
	/*--------------------------------- 제목 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqDiningQt", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqDiningQt(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.dining_question_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("다이닝 메뉴 질문 검색");
				
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqDining");		
		return mv;		
	}	
	/*--------------------------------- 내용 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqDiningAw", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqDiningAw(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.dining_answer_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("다이닝 메뉴 답변 검색");
				
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqDining");		
		return mv;		
	}
	
	// ───────────────────────────────────────── 시설 메뉴 ─────────────────────────────────────────
	/*--------------------------------- 시설 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqFacility", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqFacility(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.faqFacility(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");
				
		System.out.println("부대시설 메뉴 입니다");
		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqFacility");		
		return mv;		
	}
	/*--------------------------------- 제목 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqFacilityQt", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqFacilityQt(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.facility_question_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("부대시설 메뉴 질문 검색");
				
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqFacility");		
		return mv;		
	}	
	/*--------------------------------- 내용 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqFacilityAw", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqFacilityAw(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.facility_answer_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("부대시설 메뉴 답변 검색");
				
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqFacility");		
		return mv;		
	}
	
	// ───────────────────────────────────────── 결제 메뉴 ─────────────────────────────────────────
	/*--------------------------------- 결제 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqPayment", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqPayment(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.faqPayment(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");
				
		System.out.println("결제 메뉴 입니다");
		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqPayment");		
		return mv;		
	}
	/*--------------------------------- 제목 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqPaymentQt", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqPaymentQt(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.payment_question_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("결제 메뉴 질문 검색");
				
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqPayment");		
		return mv;		
	}	
	/*--------------------------------- 내용 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqPaymentAw", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqPaymentAw(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.payment_answer_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("결제 메뉴 답변 검색");
				
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqPayment");		
		return mv;		
	}
	
	// ───────────────────────────────────────── 기타 메뉴 ─────────────────────────────────────────
	/*--------------------------------- 기타 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqEtc", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqEtc(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.faqEtc(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");
				
		System.out.println("기타 메뉴 입니다");
		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqEtc");		
		return mv;		
	}
	/*--------------------------------- 제목 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqEtcQt", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqEtcQt(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.etc_question_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("기타 메뉴 질문 검색");
				
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqEtc");		
		return mv;		
	}	
	/*--------------------------------- 내용 조회, 검색 ---------------------------------*/
	@RequestMapping(value="/faqEtcAw", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqEtcAw(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.etc_answer_select(page);
		List<FaqVo> list = (List<FaqVo>) map.get("list");
		page = (Page) map.get("page");				
	
		System.out.println("기타 메뉴 답변 검색");
				
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("faq/faqEtc");		
		return mv;		
	}
	
	// ────────────────────────────────────────────────── 관리자 ──────────────────────────────────────────────────
	/*--------------------------------- faq 등록 ---------------------------------*/
	@RequestMapping(value="adminFaqInsert")
	public ModelAndView adminFaqInsert() {
		ModelAndView mv = new ModelAndView();
				
		mv.setViewName("faqAdmin/adminFaqInsert");
		return mv;
	}
	/*--------------------------------- faq 수정 ---------------------------------*/
	@RequestMapping(value="adminFaqUpdate")
	public ModelAndView adminFaqUpdate() {
		ModelAndView mv = new ModelAndView();
				
		mv.setViewName("faqAdmin/adminFaqUpdate");
		return mv;
	}
	
	
}
