package kr.iei.hotel.travel.service;

import java.util.List;

import kr.iei.hotel.travel.vo.TravelVO;

public interface TravelService {
	
	public List<TravelVO> selectTourList()throws Exception;

	public TravelVO selectTourDetail(String name)throws Exception;
}
