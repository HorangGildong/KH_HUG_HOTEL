package kr.iei.hotel.notice.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.iei.hotel.notice.vo.NoticeReplyVo;
import kr.iei.hotel.notice.vo.NoticeVo;
import kr.iei.hotel.notice.vo.Page;
import kr.iei.hotel.notice.vo.ReplyJoinVo;

@Repository
@Mapper
public interface NoticeMapper {
	
	/*---------- 공지사항 ----------*/
	public int tot_list_size(Page page);
	public int tot_title_size(Page page);
	public int tot_contents_size(Page page);
	public List<NoticeVo> select(Page page);
	public List<NoticeVo> title_select(Page page);
	public List<NoticeVo> contents_select(Page page);
	public int insert(NoticeVo vo);
	public int update(NoticeVo vo);
	public int delete(int nNo);
	public NoticeVo view(int nNo);
	public int hit(int nNo);
	public NoticeVo total_article(int nNo, String findStr);
	public NoticeVo title_article(int nNo, String findStr);
	public NoticeVo content_article(int nNo, String findStr);

	/*---------- 댓글 ----------*/	
	public int tot_reply_list_size(int nNo);
	public List<NoticeReplyVo> reply_select(int startNo, int endNo, int nNo);
	public int Rinsert(NoticeReplyVo vo2);
	public ReplyJoinVo Rselect2(String memberNick);
	
	
	
}
