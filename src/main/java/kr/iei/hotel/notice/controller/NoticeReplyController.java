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
import org.springframework.web.servlet.view.RedirectView;

import kr.iei.hotel.notice.service.NoticeReplyService;
import kr.iei.hotel.notice.service.NoticeService;
import kr.iei.hotel.notice.vo.NoticeReplyVo;
import kr.iei.hotel.notice.vo.NoticeVo;
import kr.iei.hotel.notice.vo.Page;
import kr.iei.hotel.notice.vo.ReplyJoinVo;

@RestController
public class NoticeReplyController {
	@Autowired
	NoticeService service;
	
	@Autowired
	NoticeReplyService Rservice;
   
   /*--------------------------------- 댓글 입력 ---------------------------------*/
   @RequestMapping(value="/noticeDetail_Rinsert", method=RequestMethod.POST)
   public ModelAndView noticeRinsert_result(NoticeVo vo, Page page, NoticeReplyVo vo2,ReplyJoinVo vo3,
		   @RequestParam(value="menu", required=false, defaultValue="total") String str,
		   @RequestParam(value="findStr", required=false, defaultValue="") String findStr) {
		
		ModelAndView mv = new ModelAndView();
		NoticeVo vo1 = null;
		
      
		System.out.println("str: " + str);
		System.out.println("findStr: " + findStr);
		System.out.println("댓글조회 출발");
      
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

		System.out.println("vo2.content: "+vo2.getContent());		
		System.out.println("vo2.getMemberNick(): "+vo2.getMemberNick());
		System.out.println("vo2.getRegdate(): "+vo2.getRegdate());
		System.out.println("vo2.getnNo(): "+vo2.getnNo());
		System.out.println("vo2.getrNo(): "+vo2.getrNo());
		System.out.println("vo2.getMemberId: "+vo2.getMemberId());
			
		if (vo2.getMemberNick() != null) {
			System.out.println("댓글 작성 들어옴");			
			vo3.setNick(vo2.getMemberNick());
			System.out.println("vo3.getNick() : "+vo3.getNick());
			
			ReplyJoinVo list2 = Rservice.Rselect2(vo3.getNick());
			vo2.setMemberId(list2.getId());
			
			System.out.println("vo2.getMemberId: "+vo2.getMemberId());
			System.out.println("list2.getId(): "+list2.getId());
			System.out.println("댓글 작성 나감");
						
			String msg = Rservice.Rinsert(vo2);
		}
		
			
		Map<String, Object> map = Rservice.Rselect(page);
		  
		List<NoticeReplyVo> list = (List<NoticeReplyVo>) map.get("list");
		page = (Page) map.get("page");
		
		Date date = new Date(System.currentTimeMillis());
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		vo2.setRegdate(dateFormat.format(date));
			 					
		System.out.println("댓글조회 도착");
		
		mv.addObject("vo2", vo2);
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.addObject("vo", vo);
		mv.addObject("vo1", vo1);
		//mv.addObject("vo2", vo2);		
		mv.setViewName("notice/noticeDetail");
		return mv;
      
   }
   
   
   /*
   //--------------------------------- 댓글 수정 ---------------------------------
   @RequestMapping(value="/adminNoticeUpdate", method= RequestMethod.POST)
   public ModelAndView adminNoticeUpdate(NoticeReplyVo vo) {
      ModelAndView mv = new ModelAndView();
      
      vo = service.view(vo.getnNo());
      
      mv.addObject("vo", vo);
      mv.setViewName("noticeAdmin/adminNoticeUpdate");
      return mv;
   }   
   
   //--------------------------------- 댓글수정 시 모달창 ---------------------------------
   @RequestMapping(value="/adminNoticeModify", method= RequestMethod.POST)
   public ModelAndView adminNoticeModify(NoticeReplyVo vo) {
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
   
   //--------------------------------- 댓글 삭제 ---------------------------------//
   @RequestMapping(value="/adminNoticeDelete", method= RequestMethod.POST)
   public ModelAndView adminNoticeDelete(NoticeReplyVo vo) {
      ModelAndView mv = new ModelAndView();
      System.out.println("삭제할번호는 " +vo.getnNo());
      
      String msg = service.delete(vo.getnNo());
      
      mv.addObject("msg", msg);
      mv.setViewName("noticeAdmin/deleteAlert");
      return mv;
   }
   */
   
}