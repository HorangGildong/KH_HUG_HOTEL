package kr.iei.hotel.reservation.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.iei.hotel.reservation.service.ReservationService;

@Controller
public class IncomeStatisticsController {

	private static final Logger logger = LoggerFactory.getLogger(IncomeStatisticsController.class);
	
	@Autowired
	ReservationService reservationService;
	
	@RequestMapping(value = "/incomeStatisticsMain", method = RequestMethod.GET)
	public String incomeStatisticsMain()throws Exception {
		logger.info("수입통계 메인");
		return "/incomestatisticsAdmin/incomeStatisticsMain";
	}
	
}
