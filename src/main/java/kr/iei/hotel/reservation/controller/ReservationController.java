package kr.iei.hotel.reservation.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.iei.hotel.guestroom.vo.GuestRoomVO;
import kr.iei.hotel.reservation.service.ReservationService;
import kr.iei.hotel.reservation.vo.ReservationVO;


@Controller
public class ReservationController {
	
	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
	
	@Autowired
	ReservationService reservationService;
	
	//예약 뷰
	@RequestMapping(value = "/reservationView1", method = {RequestMethod.GET,RequestMethod.POST})
	public String reservationView()throws Exception {
		logger.info("예약 뷰");
		return "reservation/reservationView1";
	}
	
	//예약 처리
	@RequestMapping(value = "/reservationSearchProcess", method = RequestMethod.POST)
	public String reservationSearchProcess(ReservationVO reservationVO, Model model)throws Exception {
		
		logger.info("예약 검색 처리");
		int reservationCount = reservationService.selectReservationCount(reservationVO);
		int guestRoomInfoCount = reservationService.selectGuestRoomInfoCount(reservationVO);
		GuestRoomVO guestRoomVO = new GuestRoomVO();
		List<GuestRoomVO> guestRoomVOList = new ArrayList<>();
		List<ReservationVO> reservationVOList = new ArrayList<>();
		List<Integer> guestRoomNumberList = new ArrayList<>();
		guestRoomVOList = reservationService.selectGuestRoomInfoList(reservationVO);
		guestRoomNumberList = reservationService.reservationGuestRoomNumberList(reservationVO);
		for(int index = 0; index < guestRoomNumberList.size(); index++) {
			
		}
		guestRoomVO = guestRoomVOList.get(0);
		model.addAttribute("guestRoom", guestRoomVO);
		model.addAttribute("count2", guestRoomInfoCount);
		model.addAttribute("count1", reservationCount);
		return "forward:/reservationView1";
		
	}
}
