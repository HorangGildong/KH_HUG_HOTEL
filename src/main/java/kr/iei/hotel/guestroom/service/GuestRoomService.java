package kr.iei.hotel.guestroom.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.iei.hotel.guestroom.mapper.GuestRoomMapper;
import kr.iei.hotel.guestroom.vo.GuestRoomVO;


@Service
public class GuestRoomService {
	
	@Autowired
	GuestRoomMapper guestRoomMapper;
	
	public void guestRoomInfoInsert(GuestRoomVO guestRoomVO)throws Exception {
		guestRoomMapper.guestRoomInfoInsert(guestRoomVO);
	}
	

}
