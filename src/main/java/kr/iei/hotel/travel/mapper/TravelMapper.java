package kr.iei.hotel.travel.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.iei.hotel.travel.vo.TravelVO;

@Mapper
public interface TravelMapper {
	public List<TravelVO> selectTourList()throws Exception;
	
	public TravelVO selectTourDetail(String name)throws Exception;
}
