package kr.iei.hotel.notice.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	@Autowired
	NoticeController control;
   
   /*--------------------------------- 댓글 입력 ---------------------------------*/
	 @RequestMapping(value="/noticeDetail_Rinsert", method=RequestMethod.POST)
	   public ModelAndView noticeRinsert_result(NoticeVo vo, Page page, NoticeReplyVo vo2, ReplyJoinVo vo3,
			   @RequestParam(value="menu", required=false, defaultValue="total") String str,
				@RequestParam(value="findStr", required=false, defaultValue="") String findStr) {
			
			ModelAndView mv = new ModelAndView();
			
			if (vo2.getMemberNick() != null) {
				System.out.println("댓글 작성 들어옴");			
				vo3.setNick(vo2.getMemberNick());
				
				ReplyJoinVo list2 = Rservice.Rselect2(vo3.getNick());
				vo2.setMemberId(list2.getId());
						
				System.out.println("댓글 작성 나감");
							
				String msg = Rservice.Rinsert(vo2);
			}
		
				 					
			System.out.println("댓글조회 도착");
			
			mv.addObject("vo2", vo2);
			
			
			return control.noticeDetail(vo, page, vo2, str, findStr);
	      
	   }
	   
	   @RequestMapping(value="/Rupdate", method= RequestMethod.POST)
	   public ModelAndView Rupdate(NoticeVo vo, Page page, NoticeReplyVo vo2,
			   @RequestParam(value="menu", required=false, defaultValue="total") String str,
			   @RequestParam(value="findStr", required=false, defaultValue="") String findStr) {
		   ModelAndView mv = new ModelAndView();
		   
		   System.out.println("getContent: "+vo2.getContent());
		   System.out.println("getMemberId: "+vo2.getMemberId());
		   System.out.println("getMemberNick: "+vo2.getMemberNick());
		   System.out.println("getnNo: "+vo2.getnNo());
		   System.out.println("getPassword: "+vo2.getPassword());
		   
		   
		   return control.noticeDetail(vo, page, vo2, str, findStr);
	   }
	   
	   @RequestMapping(value="/Rdelete", method= RequestMethod.POST)
	   public ModelAndView Rdelete(NoticeVo vo, Page page, NoticeReplyVo vo2,
			   @RequestParam(value="menu", required=false, defaultValue="total") String str,
			   @RequestParam(value="findStr", required=false, defaultValue="") String findStr) {
		   ModelAndView mv = new ModelAndView();
		   
		   
		   
		   return control.noticeDetail(vo, page, vo2, str, findStr);
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