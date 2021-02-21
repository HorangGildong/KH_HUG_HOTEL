package kr.iei.hotel.reservation.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

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
	public String reservationView(Model model, ReservationVO reservationVO, HttpServletResponse response)throws Exception {
		logger.info("예약 뷰");
		return "reservation/reservationView1";
	}
	
	//예약 처리
	@RequestMapping(value = "/reservationSearchProcess", method = {RequestMethod.POST,RequestMethod.GET})
	public String reservationSearchProcess(ReservationVO reservationVO, Model model, HttpServletResponse response)throws Exception {
		
		logger.info("예약 검색 처리");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(reservationVO.getGuestRoomName() != null) {
		//체크아웃이 체크인보다 높거나 체크인 체크아웃 값이 같은 경우 처리
		if(reservationVO.getCheckIn() >= reservationVO.getCheckOut()) {
			out.println("<script>alert('날짜 선택을 잘못하셨습니다.'); history.go(-1);</script>");
			out.flush();
		}
		
		
		int reservationCount = reservationService.selectReservationCount(reservationVO);
		int guestRoomInfoCount = reservationService.selectGuestRoomInfoCount(reservationVO);

		//조회하여 객실이 존재하지 않다는 처리
		if(reservationCount >= guestRoomInfoCount) {
			out.println("<script>alert('선택한 날짜에 객실이 없습니다.'); history.go(-1);</script>");
	        out.flush();
		}
		
		
		//객실 남은방
		reservationVO.setGuestRoomRemaining(guestRoomInfoCount - reservationCount);
		//숙박 기간
		reservationVO.setLodgmentPeriod(reservationVO.getCheckOut() - reservationVO.getCheckIn());
		
		
		//예약기간이 30일 이상이면 예약 못하게 처리
		if(reservationVO.getLodgmentPeriod() >= 30) {
			out.println("<script>alert('예약기간은 한달 이상 불가합니다.'); history.go(-1);</script>");
	        out.flush();
		}
		
		
		//기준이되는 객실 정보들을 먼저 셋팅한다
		GuestRoomVO guestRoomVO = new GuestRoomVO();
		List<GuestRoomVO> guestRoomVOList = new ArrayList<>();
		guestRoomVOList = reservationService.selectGuestRoomInfoList(reservationVO);
		guestRoomVO = guestRoomVOList.get(0);
		model.addAttribute("guestRoom", guestRoomVO);
		
		
		
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
		reservationVO.setAdultCount(adultCountProcess);
		reservationVO.setChildCount(childCountProcess);
		
		
		
		List<Integer> guestRoomNumberList = new ArrayList<>();
		guestRoomNumberList = reservationService.reservationGuestRoomNumberList(reservationVO);
		
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
		model.addAttribute("guestRoomInfoList", guestRoomVOList);
		
		
		
		
		//구해온 정보들로 예약한 객실에 대한 총금액을 가져온다
		for(int index = 0; index < reservationVO.getLodgmentPeriod(); index++) {
			reservationVO.setTotalPrice(reservationVO.getTotalPrice() + guestRoomVO.getGuestRoomPrice());
		}
		for(int index = 0; index < reservationVO.getAdultCount(); index++) {
			reservationVO.setTotalPrice(reservationVO.getTotalPrice() + guestRoomVO.getAdultPrice());
		}
		for(int index = 0; index < reservationVO.getChildCount(); index++) {
			reservationVO.setTotalPrice(reservationVO.getTotalPrice() + guestRoomVO.getChildPrice());
		}
		System.out.println(reservationVO.getTotalPrice());
		model.addAttribute("reservationInfo", reservationVO);
		}
		
		
		return "reservation/reservationView1";
		
	}
}
