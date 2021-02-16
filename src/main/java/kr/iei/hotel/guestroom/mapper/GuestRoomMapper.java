package kr.iei.hotel.guestroom.mapper;

import org.apache.ibatis.annotations.Mapper;


import kr.iei.hotel.guestroom.vo.GuestRoomVO;


@Mapper
public interface GuestRoomMapper {
	public void guestRoomInfoInsert(GuestRoomVO guestRoomVO)throws Exception;
}
