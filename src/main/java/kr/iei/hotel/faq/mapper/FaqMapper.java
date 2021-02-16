package kr.iei.hotel.faq.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.iei.hotel.faq.vo.FaqVo;
import kr.iei.hotel.notice.vo.Page;

@Repository
@Mapper
public interface FaqMapper {

	public int tot_list_size(Page page);
	public List<FaqVo> select(Page page);
	public List<FaqVo> faqGuide(Page page);
	public List<FaqVo> faqRoom(Page page);
	public List<FaqVo> faqDining(Page page);
	public List<FaqVo> faqFacility(Page page);
	public List<FaqVo> faqPayment(Page page);
	public List<FaqVo> faqEtc(Page page);

}
