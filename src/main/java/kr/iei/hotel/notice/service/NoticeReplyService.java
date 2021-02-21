package kr.iei.hotel.notice.service;

import java.util.Map;

import kr.iei.hotel.notice.vo.NoticeReplyVo;
import kr.iei.hotel.notice.vo.Page;
import kr.iei.hotel.notice.vo.ReplyJoinVo;

public interface NoticeReplyService {

	Map<String, Object> Rselect(Page page);
	public String Rinsert(NoticeReplyVo vo2);
	public ReplyJoinVo Rselect2(String memberNick);



}
