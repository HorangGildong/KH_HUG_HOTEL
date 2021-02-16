package kr.iei.hotel.faq.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.iei.hotel.faq.mapper.FaqMapper;
import kr.iei.hotel.faq.service.FaqService;
import kr.iei.hotel.faq.vo.FaqVo;
import kr.iei.hotel.notice.vo.Page;



@Service
@Transactional
public class FaqDao implements FaqService {

	@Autowired
	FaqMapper mapper;

	@Override
	public Map<String, Object> select(Page page) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<FaqVo> list = null;
		
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);
		}		
		
		int totListSize = mapper.tot_list_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.select(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}

	@Override
	public Map<String, Object> faqGuide(Page page) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<FaqVo> list = null;
		
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);
		}		
		
		int totListSize = mapper.tot_list_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.faqGuide(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}

	@Override
	public Map<String, Object> faqRoom(Page page) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<FaqVo> list = null;
		
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);
		}		
		
		int totListSize = mapper.tot_list_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.faqRoom(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}

	@Override
	public Map<String, Object> faqDining(Page page) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<FaqVo> list = null;
		
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);
		}		
		
		int totListSize = mapper.tot_list_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.faqDining(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}

	@Override
	public Map<String, Object> faqFacility(Page page) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<FaqVo> list = null;
		
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);
		}		
		
		int totListSize = mapper.tot_list_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.faqFacility(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}

	@Override
	public Map<String, Object> faqPayment(Page page) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<FaqVo> list = null;
		
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);
		}		
		
		int totListSize = mapper.tot_list_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.faqPayment(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}

	@Override
	public Map<String, Object> faqEtc(Page page) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<FaqVo> list = null;
		
		if (page == null) {
			page = new Page();
			page.setNowPage(1);
		} else if (page.getNowPage() < 1) {
			page.setNowPage(1);
		}		
		
		int totListSize = mapper.tot_list_size(page);
		page.setTotListSize(totListSize);
		page.pageCompute();
		
		list = mapper.faqEtc(page);
		
		map.put("page", page);
		map.put("list", list);		
		
		return map;
	}
	
	
}
