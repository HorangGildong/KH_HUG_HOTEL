package kr.iei.hotel.notice.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import kr.iei.hotel.notice.vo.NoticeVo;
import kr.iei.hotel.notice.vo.Page;

@Repository
@Mapper
public interface NoticeMapper {
	
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
	
}
