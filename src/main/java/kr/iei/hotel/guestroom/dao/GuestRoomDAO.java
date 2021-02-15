package kr.iei.hotel.guestroom.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.iei.hotel.guestroom.vo.GuestRoomVO;
import kr.iei.hotel.guestroom.vo.TestVO;

@Mapper
public interface GuestRoomDAO {
	public GuestRoomVO insert(GuestRoomVO vo)throws Exception;
}
