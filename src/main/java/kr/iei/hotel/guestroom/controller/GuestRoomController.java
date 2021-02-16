package kr.iei.hotel.guestroom.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.iei.hotel.guestroom.service.GuestRoomService;
import kr.iei.hotel.guestroom.vo.GuestRoomVO;


@Controller
public class GuestRoomController {
	
	@Autowired
	GuestRoomService guestRoomService;
	
	//-------------------------------------User--------------------------------------------
	
	@RequestMapping(value = "/guestRoomView", method = RequestMethod.GET)
	public String guestRoomView()throws Exception {
		return "/guestroom/guestRoomView";
	}
	@RequestMapping(value = "/guestRoomDetailView", method = RequestMethod.GET)
	public String guestRoomDetailView()throws Exception {
		return "/guestroom/guestRoomDetailView";
	}
	
	//-------------------------------------Admin--------------------------------------------

	@RequestMapping(value = "/guestRoomAdminView", method = RequestMethod.GET)
	public String guestRoomlistAdmin()throws Exception {
		return "/guestroomAdmin/guestRoomAdminView";
	}

	@RequestMapping(value = "/guestRoomAddView", method = RequestMethod.GET)
	public String guestRoomAddView()throws Exception {
		return "/guestroomAdmin/guestRoomAddView";
	}
	
	@RequestMapping(value = "/guestRoomInfoInsert", method = RequestMethod.POST)
	public String guestRoomInfoInsert(GuestRoomVO guestRoomVO)throws Exception {
		guestRoomVO.setGuestRoomImage1(guestRoomVO.getImage1().getOriginalFilename());
		guestRoomVO.setGuestRoomImage2(guestRoomVO.getImage2().getOriginalFilename());
		guestRoomVO.setGuestRoomImage3(guestRoomVO.getImage3().getOriginalFilename());
		guestRoomVO.setGuestRoomImage4(guestRoomVO.getImage4().getOriginalFilename());
		guestRoomService.guestRoomInfoInsert(guestRoomVO);
		return "guestRoomAddView";
	}
}
