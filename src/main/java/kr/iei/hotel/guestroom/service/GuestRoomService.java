package kr.iei.hotel.guestroom.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.iei.hotel.guestroom.mapper.GuestRoomMapper;
import kr.iei.hotel.guestroom.vo.GuestRoomVO;


@Service
public class GuestRoomService {
	
	@Autowired
	GuestRoomMapper guestRoomMapper;
	//-------------------------------------User--------------------------------------------
	//-------------------------------------Admin--------------------------------------------
	
	//객실 관리 리스트
	public List<GuestRoomVO> guestRoomAdminList()throws Exception {
		return guestRoomMapper.guestRoomAdminList();
	}
	//객실 정보 추가
	public void guestRoomInfoInsert(GuestRoomVO guestRoomVO)throws Exception {
		guestRoomMapper.guestRoomInfoInsert(guestRoomVO);
	}
	//객실 정보 삭제
	public void guestRoomInfoDelete(String guestRoomName)throws Exception {
		guestRoomMapper.guestRoomInfoDelete(guestRoomName);
	}
	

}
