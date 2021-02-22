package kr.iei.hotel.notice.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.iei.hotel.notice.mapper.NoticeMapper;
import kr.iei.hotel.notice.service.NoticeReplyService;
import kr.iei.hotel.notice.vo.NoticeReplyVo;
import kr.iei.hotel.notice.vo.Page;
import kr.iei.hotel.notice.vo.ReplyJoinVo;

@Service
@Transactional
public class NoticeReplyDao implements NoticeReplyService{

	@Autowired
	NoticeMapper mapper;

	
	/*--------------------------------- 댓글전체 조회 ---------------------------------*/
	@Override
	public Map<String, Object> Rselect(Page page, int nNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<NoticeReplyVo> list = null;
		
		System.out.println("댓글select 출발");
		
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);
		}
		
		int totListSize = mapper.tot_reply_list_size(nNo);
		System.out.println("totListSize: "+totListSize);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.reply_select(page.getStartNo(), page.getEndNo(), nNo);
		
		System.out.println("댓글select 도착");
		
		map.put("page", page);
		map.put("list", list);
		
		return map;
	}

	/*--------------------------------- 댓글 등록 ---------------------------------*/
	@Override
	public String Rinsert(NoticeReplyVo vo2) {
		String msg = "댓글이 성공적으로 등록 되었습니다.";
		
		System.out.println("댓글 등록 출발");
		System.out.println("vo2.content: "+vo2.getContent());		
		System.out.println("vo2.getMemberNick(): "+vo2.getMemberNick());
		System.out.println("vo2.getRegdate(): "+vo2.getRegdate());
		System.out.println("vo2.getnNo(): "+vo2.getnNo());
		System.out.println("vo2.getrNo(): "+vo2.getrNo());
		
		int cnt = mapper.Rinsert(vo2);	
		if (cnt < 1) {
			msg = "댓글 등록 중 오류가 발생하였습니다.";
		}
				
		System.out.println("댓글 등록 도착");
		System.out.println("vo2.content: "+vo2.getContent());		
		System.out.println("vo2.getMemberNick(): "+vo2.getMemberNick());
		System.out.println("vo2.getRegdate(): "+vo2.getRegdate());
		System.out.println("vo2.getnNo(): "+vo2.getnNo());
		System.out.println("vo2.getrNo(): "+vo2.getrNo());
		
		return msg;
	}

	@Override
	public ReplyJoinVo Rselect2(String memberNick) {
		ReplyJoinVo vo = mapper.Rselect2(memberNick); 
		return vo;
	}
	
	/*--------------------------------- 댓글 수정 ---------------------------------*/
	@Override
	public NoticeReplyVo Rview(int getrNo) {
		
		
		
		return null;
	}
   
   

   
}