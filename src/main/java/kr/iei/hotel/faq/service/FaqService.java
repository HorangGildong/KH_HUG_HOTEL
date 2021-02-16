package kr.iei.hotel.faq.service;

import java.util.Map;

import kr.iei.hotel.notice.vo.Page;

public interface FaqService {

	public Map<String, Object> select(Page page);
	public Map<String, Object> faqGuide(Page page);
	public Map<String, Object> faqRoom(Page page);
	public Map<String, Object> faqDining(Page page);
	public Map<String, Object> faqFacility(Page page);
	public Map<String, Object> faqPayment(Page page);
	public Map<String, Object> faqEtc(Page page);	
	
}
