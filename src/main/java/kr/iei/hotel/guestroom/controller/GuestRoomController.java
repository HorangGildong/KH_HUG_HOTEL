package kr.iei.hotel.guestroom.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.iei.hotel.guestroom.service.GuestRoomService;
import kr.iei.hotel.guestroom.vo.GuestRoomVO;


@Controller
public class GuestRoomController {
	
	private static final Logger logger = LoggerFactory.getLogger(GuestRoomController.class);
	
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
	//객실 관리 리스트 뷰
	@RequestMapping(value = "/guestRoomAdminView", method = RequestMethod.GET)
	public String guestRoomAdminList(Model model)throws Exception {
		
		logger.info("객실 관리 리스트");
		model.addAttribute("list", guestRoomService.guestRoomAdminList());
		return "/guestroomAdmin/guestRoomAdminView";
	
	}
	//객실 추가 뷰
	@RequestMapping(value = "/guestRoomAddView", method = RequestMethod.GET)
	public String guestRoomAddView()throws Exception {
		
		logger.info("객실 추가 뷰");
		return "/guestroomAdmin/guestRoomAddView";
	
	}
	//객실 추가
	@RequestMapping(value = "/guestRoomInsert", method = RequestMethod.POST)
	public String guestRoomInsert(GuestRoomVO guestRoomVO)throws Exception {
		
		logger.info("객실 추가");
		guestRoomVO.setGuestRoomImage1(guestRoomVO.getImage1().getOriginalFilename());
		guestRoomVO.setGuestRoomImage2(guestRoomVO.getImage2().getOriginalFilename());
		guestRoomVO.setGuestRoomImage3(guestRoomVO.getImage3().getOriginalFilename());
		guestRoomVO.setGuestRoomImage4(guestRoomVO.getImage4().getOriginalFilename());
		guestRoomService.guestRoomInsert(guestRoomVO);
		return "redirect:/guestRoomAdminView";
	}
	//객실 삭제
	@RequestMapping(value = "/guestRoomDelete", method = RequestMethod.GET)
	public String guestRoomInfo(String guestRoomName)throws Exception {
		
		logger.info("객실 삭제");
		guestRoomService.guestRoomDelete(guestRoomName);
		return "redirect:/guestRoomAdminView";
	
	}
}
