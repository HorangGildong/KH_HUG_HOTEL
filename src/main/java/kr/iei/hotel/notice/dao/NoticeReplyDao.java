package kr.iei.hotel.notice.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.iei.hotel.notice.mapper.NoticeMapper;
import kr.iei.hotel.notice.service.NoticeReplyService;
import kr.iei.hotel.notice.vo.NoticeVo;

@Service
@Transactional
public class NoticeReplyDao implements NoticeReplyService{

	@Autowired
	NoticeMapper mapper;

	@Override
	public String Rinsert(NoticeVo vo) {
	      String msg = "댓글이 성공적으로 등록 되었습니다.";
	      
	      int cnt = mapper.Rinsert(vo);
	      if (cnt < 1) {
	         msg = "댓글 등록 중 오류가 발생하였습니다.";
	      }
	      
	      return msg;
	   }
   
   

   
}