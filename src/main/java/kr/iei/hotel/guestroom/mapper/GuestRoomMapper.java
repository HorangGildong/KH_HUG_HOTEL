package kr.iei.hotel.guestroom.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import kr.iei.hotel.guestroom.vo.GuestRoomVO;


@Mapper
public interface GuestRoomMapper {
	
	//-------------------------------------User--------------------------------------------
	//-------------------------------------Admin--------------------------------------------
	
	//객실 관리 리스트
	public List<GuestRoomVO> guestRoomAdminList()throws Exception;
	//객실 정보 추가
	public void guestRoomInfoInsert(GuestRoomVO guestRoomVO)throws Exception;
	//객실 정보 삭제
	public void guestRoomInfoDelete(String guestRoomName)throws Exception;
}
