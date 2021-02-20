package kr.iei.hotel.reservation.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ReservationController {
	
	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);

	//예약 뷰
	@RequestMapping(value = "/reservationView1", method = {RequestMethod.GET,RequestMethod.POST})
	public String reservationView()throws Exception {
		logger.info("예약 뷰");
		return "reservation/reservationView1";
	}
}
