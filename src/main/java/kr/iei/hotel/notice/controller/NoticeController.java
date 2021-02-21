package kr.iei.hotel.notice.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.iei.hotel.notice.service.NoticeReplyService;
import kr.iei.hotel.notice.service.NoticeService;
import kr.iei.hotel.notice.vo.NoticeReplyVo;
import kr.iei.hotel.notice.vo.NoticeVo;
import kr.iei.hotel.notice.vo.Page;

@RestController
public class NoticeController {
		
	@Autowired
	NoticeService service;
	
	@Autowired
	NoticeReplyService Rservice;
	
	// ────────────────────────────────────────────────── 사용자 ──────────────────────────────────────────────────
	/*--------------------------------- 전체조회, 검색---------------------------------*/
	@RequestMapping(value="/noticeMain", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView noticeMain(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.select(page);		
		List<NoticeVo> list = (List<NoticeVo>) map.get("list");
		page = (Page) map.get("page");
		
		System.out.println("공지메인 컨트롤");
		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("notice/noticeMain");		
		return mv;		
	}
	
	/*--------------------------------- 제목 검색 ---------------------------------*/
	@RequestMapping(value="/noticeTitle", method=RequestMethod.POST)
	public ModelAndView noticeTitle(Page page) {
		ModelAndView mv = new ModelAndView();
			
		Map<String, Object> map = service.title_select(page);		
		List<NoticeVo> list = (List<NoticeVo>) map.get("list");
		page = (Page) map.get("page");

		System.out.println("공지제목 컨트롤");
		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("notice/noticeMain");		
		return mv;		
	}
	
	/*--------------------------------- 내용 검색 ---------------------------------*/
	@RequestMapping(value="/noticeContents", method=RequestMethod.POST)
	public ModelAndView noticeContents(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.contents_select(page);		
		List<NoticeVo> list = (List<NoticeVo>) map.get("list");
		page = (Page) map.get("page");

		System.out.println("공지내용 컨트롤");
		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("notice/noticeMain");		
		return mv;		
	}
	
	/*--------------------------------- 뷰 상세보기 ---------------------------------*/
	@RequestMapping(value="/noticeDetail", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView noticeDetail(NoticeVo vo, Page page, 
			@RequestParam(value="menu", required=false, defaultValue="total") String str,
			@RequestParam(value="findStr", required=false, defaultValue="") String findStr) {
		
		ModelAndView mv = new ModelAndView();
		NoticeVo vo1 = null;
		NoticeReplyVo vo2 = new NoticeReplyVo();
		
		System.out.println("1.menu: "+str);
		System.out.println("2.vo.getnNo(): "+vo.getnNo());
		System.out.println("3.findStr : "+ findStr);

		vo = service.view(vo.getnNo());

		if (str.equals("total")) {
			vo1 = service.total_article(vo.getnNo(),findStr);
		}
		else if (str.equals("title")) {
			vo1 = service.title_article(vo.getnNo(),findStr);
		}
		else if (str.equals("contents")) {
			vo1 = service.content_article(vo.getnNo(),findStr);
		}
		
		Map<String, Object> map = Rservice.Rselect(page);
	      
	    List<NoticeReplyVo> list = (List<NoticeReplyVo>) map.get("list");
	    page = (Page) map.get("page");
		
	   	Date date = new Date(System.currentTimeMillis());
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		vo2.setRegdate(dateFormat.format(date));
		
		System.out.println("4.reply_data: "+ vo2.getRegdate());		
		System.out.println("5.vo.getnNo(): "+vo.getnNo());
		
		
		
		mv.addObject("vo2", vo2);
		mv.addObject("list", list);
		mv.addObject("page", page);  
		mv.addObject("vo", vo);
		mv.addObject("vo1", vo1);		
		mv.setViewName("notice/noticeDetail");
		return mv;
	}
	
	// ────────────────────────────────────────────────── 관리자 ──────────────────────────────────────────────────
	/*--------------------------------- 전체조회, 검색 ---------------------------------*/
	@RequestMapping(value="/adminNoticeMain", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView adminNoticeMain(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.select(page);		
		List<NoticeVo> list = (List<NoticeVo>) map.get("list");
		page = (Page) map.get("page");

		System.out.println("관리자 공지메인 컨트롤");
		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("noticeAdmin/adminNoticeMain");		
		return mv;		
	}
	
	/*--------------------------------- 제목 검색 ---------------------------------*/
	@RequestMapping(value="/adminNoticeTitle", method=RequestMethod.POST)
	public ModelAndView adminNoticeTitle(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.title_select(page);		
		List<NoticeVo> list = (List<NoticeVo>) map.get("list");
		page = (Page) map.get("page");

		System.out.println("관리자 공지제목 컨트롤");
		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("noticeAdmin/adminNoticeMain");		
		return mv;		
	}
	
	/*--------------------------------- 내용 검색 ---------------------------------*/
	@RequestMapping(value="/adminNoticeContents", method=RequestMethod.POST)
	public ModelAndView adminNoticeContents(Page page) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = service.contents_select(page);		
		List<NoticeVo> list = (List<NoticeVo>) map.get("list");
		page = (Page) map.get("page");

		System.out.println("관리자 공지내용 컨트롤");
		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("noticeAdmin/adminNoticeMain");		
		return mv;		
	}
	
	/*--------------------------------- 뷰 상세보기 ---------------------------------*/
	@RequestMapping(value="/adminNoticeDetail", method= RequestMethod.POST)
	public ModelAndView adminNoticeDetail(NoticeVo vo, 
			@RequestParam(value="menu", required=false, defaultValue="total") String str,
			@RequestParam(value="findStr", required=false, defaultValue="") String findStr) {
		
		ModelAndView mv = new ModelAndView();
		NoticeVo vo1 = null;		
		
		System.out.println(str);
		
		vo = service.view(vo.getnNo());	
			
		if (str.equals("total")) {
			vo1 = service.total_article(vo.getnNo(),findStr);			
		}
		else if (str.equals("title")) {
			vo1 = service.title_article(vo.getnNo(),findStr);
		}
		else if (str.equals("contents")) {
			vo1 = service.content_article(vo.getnNo(),findStr);
		}	
		
		mv.addObject("vo", vo);
		mv.addObject("vo1", vo1);
		mv.setViewName("noticeAdmin/adminNoticeDetail");
		return mv;
	}
	
	/*--------------------------------- 공지 등록 ---------------------------------*/
	@RequestMapping(value="/adminNoticeInsert", method= RequestMethod.POST)
	public ModelAndView adminNoticeInsert() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("noticeAdmin/adminNoticeInsert");
		return mv;
	}
	
	/*--------------------------------- 공지 등록 시 모달창 ---------------------------------*/
	@RequestMapping(value="/adminNoticeInsertR", method= RequestMethod.POST)
	public ModelAndView adminNoticeInsertR(NoticeVo vo) {
		ModelAndView mv = new ModelAndView();
		System.out.println(vo.getTitle());
		System.out.println(vo.getPub());
		System.out.println(vo.getContents());
		
		String msg = service.insert(vo);
		
		mv.addObject("msg", msg);
		mv.setViewName("noticeAdmin/insertAlert");
		return mv;
	}
	
	/*--------------------------------- 공지 수정 ---------------------------------*/
	@RequestMapping(value="/adminNoticeUpdate", method= RequestMethod.POST)
	public ModelAndView adminNoticeUpdate(NoticeVo vo) {
		ModelAndView mv = new ModelAndView();
		
		vo = service.view(vo.getnNo());
		
		mv.addObject("vo", vo);
		mv.setViewName("noticeAdmin/adminNoticeUpdate");
		return mv;
	}
	
	/*--------------------------------- 공지 수정 시 모달창 ---------------------------------*/
	@RequestMapping(value="/adminNoticeModify", method= RequestMethod.POST)
	public ModelAndView adminNoticeModify(NoticeVo vo) {
		ModelAndView mv = new ModelAndView();
		System.out.println(vo.getnNo());
		System.out.println(vo.getTitle());
		System.out.println(vo.getContents());
		System.out.println(vo.getPub());
		
		String msg = service.update(vo);		
		
		mv.addObject("msg", msg);
		mv.setViewName("noticeAdmin/modifyAlert");
		return mv;
	}
	
	/*--------------------------------- 공지 삭제 ---------------------------------*/
	@RequestMapping(value="/adminNoticeDelete", method= RequestMethod.POST)
	public ModelAndView adminNoticeDelete(NoticeVo vo) {
		ModelAndView mv = new ModelAndView();
		System.out.println("삭제할번호는 " +vo.getnNo());
		
		String msg = service.delete(vo.getnNo());
		
		mv.addObject("msg", msg);
		mv.setViewName("noticeAdmin/deleteAlert");
		return mv;
	}
	
}
