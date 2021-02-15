package kr.iei.hotel.guestroom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.iei.hotel.guestroom.dao.GuestRoomDAO;
import kr.iei.hotel.guestroom.vo.GuestRoomVO;
import kr.iei.hotel.guestroom.vo.TestVO;

@Service
public class GuestRoomService {
	
	@Autowired
	GuestRoomDAO guestRoomDAO;
	
	public GuestRoomVO insert(GuestRoomVO vo)throws Exception {
		System.out.println("서비스");
		return guestRoomDAO.insert(vo);
	}
}
