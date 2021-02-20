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
		
		reservationVO.setGuestRoomRemaining(guestRoomInfoCount - reservationCount);
		reservationVO.setLodgmentPeriod(reservationVO.getCheckOut() - reservationVO.getCheckIn());
		

		GuestRoomVO guestRoomVO = new GuestRoomVO();
		
		List<GuestRoomVO> guestRoomVOList = new ArrayList<>();
		List<Integer> guestRoomNumberList = new ArrayList<>();
		
		guestRoomVOList = reservationService.selectGuestRoomInfoList(reservationVO);
		guestRoomNumberList = reservationService.reservationGuestRoomNumberList(reservationVO);
		
		guestRoomVO = guestRoomVOList.get(0);
		
		int standardPersonnelProcess = guestRoomVO.getStandardPersonnel();
		int adultProcess = reservationVO.getAdult();
		int childProcess = reservationVO.getChild();
		int adultCountProcess;
		int childCountProcess;
		// 기준인원을 넘어선 성인을 우선으로 두고 추가금 개수를 구하는 것
		if(standardPersonnelProcess < adultProcess) {
			adultCountProcess = adultProcess - standardPersonnelProcess;
			childCountProcess = childProcess;
		} else {
			standardPersonnelProcess = standardPersonnelProcess - adultProcess;
			adultCountProcess = 0;
			if(standardPersonnelProcess < childProcess) {
				childCountProcess = childProcess - standardPersonnelProcess;
				standardPersonnelProcess = standardPersonnelProcess + adultProcess;
			} else {
				childCountProcess = 0;
				standardPersonnelProcess = standardPersonnelProcess + adultProcess;
			}
		}
		
		System.out.println("기준인원 : "+standardPersonnelProcess);
		System.out.println("성인카운트 : "+adultCountProcess);
		System.out.println("어린이카운트 : "+childCountProcess);
		
		model.addAttribute("guestRoom", guestRoomVO);
		//예약 되어있지 않은 객실 호수 번호 + 정보를 구해온다 
		for(int index1 = 0; index1 < guestRoomVOList.size(); index1++) {
			guestRoomVO = guestRoomVOList.get(index1);
			for(int index2 = 0; index2 < guestRoomNumberList.size(); index2++) {
				if(guestRoomVO.getGuestRoomNo() == guestRoomNumberList.get(index2)) {
					guestRoomVOList.remove(index1);
					index1--;
				}
			}
		}
		System.out.println(guestRoomVOList.size());
		model.addAttribute("guestRoomInfoList", guestRoomVOList);

		return "forward:/reservationView1";
		
	}
}
