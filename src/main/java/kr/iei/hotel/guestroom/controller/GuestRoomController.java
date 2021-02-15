package kr.iei.hotel.guestroom.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.iei.hotel.guestroom.service.GuestRoomService;
import kr.iei.hotel.guestroom.vo.GuestRoomVO;
import kr.iei.hotel.guestroom.vo.TestVO;

@RestController
public class GuestRoomController {
	
	@Autowired
	GuestRoomService guestRoomService;
	
	@RequestMapping("/insert")
	public GuestRoomVO insert()throws Exception {
		GuestRoomVO guestRoomVO = new GuestRoomVO();
		guestRoomVO.setGuestRoomName("스탠다드yo");
		guestRoomVO = guestRoomService.insert(guestRoomVO);
		return guestRoomVO;
	}
}
