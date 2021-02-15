package kr.iei.hotel.notice.service;

import java.util.Map;
import kr.iei.hotel.notice.vo.NoticeVo;
import kr.iei.hotel.notice.vo.Page;

public interface NoticeService {
	public Map<String, Object> select(Page page);
	public Map<String, Object> title_select(Page page);
	public Map<String, Object> contents_select(Page page);
	public String insert(NoticeVo vo);
	public String update(NoticeVo vo);
	public String delete(int nNo);
	public NoticeVo view(int nNo);
	public NoticeVo total_article(int nNo, String findStr);
	public NoticeVo title_article(int nNo, String findStr);
	public NoticeVo content_article(int nNo, String findStr);
	

}
