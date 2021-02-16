package kr.iei.hotel.guestroom.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.iei.hotel.guestroom.service.GuestRoomService;
import kr.iei.hotel.guestroom.vo.GuestRoomVO;
import kr.iei.hotel.guestroom.vo.TestVO;

@Controller
public class GuestRoomController {
	
	@Autowired
	GuestRoomService guestRoomService;
	
	@RequestMapping(value = "/guestRoomView", method = RequestMethod.GET)
	public String guestRoomView()throws Exception {
		return "/guestroom/guestRoomView";
	}
	@RequestMapping(value = "/guestRoomDetailView", method = RequestMethod.GET)
	public String guestRoomDetailView()throws Exception {
		return "/guestroom/guestRoomDetailView";
	}
}
