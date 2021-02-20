package kr.iei.hotel.notice.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.iei.hotel.notice.service.NoticeReplyService;
import kr.iei.hotel.notice.vo.NoticeVo;

@RestController
public class NoticeReplyController {

   @Autowired
   NoticeReplyService Rservice;
   
   /*--------------------------------- 댓글 입력 ---------------------------------*/
   @RequestMapping(value="/noticeRinsert_result", method=RequestMethod.POST)
   public ModelAndView noticeRinsert_result(NoticeVo vo) {
      ModelAndView mv = new ModelAndView();
      
      System.out.println("댓글입력 결과 컨트롤");
      
      String msg = Rservice.Rinsert(vo);
      
      mv.addObject("msg", msg);
      mv.setViewName("notice/noticeDetail");
      return mv;
   }
   
   
   /*
   //--------------------------------- 댓글 수정 ---------------------------------
   @RequestMapping(value="/adminNoticeUpdate", method= RequestMethod.POST)
   public ModelAndView adminNoticeUpdate(NoticeVo vo) {
      ModelAndView mv = new ModelAndView();
      
      vo = service.view(vo.getnNo());
      
      mv.addObject("vo", vo);
      mv.setViewName("noticeAdmin/adminNoticeUpdate");
      return mv;
   }   
   
   //--------------------------------- 댓글수정 시 모달창 ---------------------------------
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
   
   //--------------------------------- 댓글 삭제 ---------------------------------//
   @RequestMapping(value="/adminNoticeDelete", method= RequestMethod.POST)
   public ModelAndView adminNoticeDelete(NoticeVo vo) {
      ModelAndView mv = new ModelAndView();
      System.out.println("삭제할번호는 " +vo.getnNo());
      
      String msg = service.delete(vo.getnNo());
      
      mv.addObject("msg", msg);
      mv.setViewName("noticeAdmin/deleteAlert");
      return mv;
   }
   */
   
}