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

import kr.iei.hotel.reservation.service.ReservationService;
import kr.iei.hotel.reservation.vo.IncomeStatisticsVO;

@Controller
public class IncomeStatisticsController {

	private static final Logger logger = LoggerFactory.getLogger(IncomeStatisticsController.class);
	
	@Autowired
	ReservationService reservationService;
	
	//mina
	@RequestMapping(value = "/incomeStatisticsMain", method = RequestMethod.GET)
	public String incomeStatisticsMain()throws Exception {
		logger.info("수입통계 메인");
		return "/incomestatisticsAdmin/incomeStatisticsMain";
	}
	
	//월별통계
	@RequestMapping(value = "/monthlyStatistics", method = RequestMethod.POST)
	public String monthlyStatistics(IncomeStatisticsVO incomeStatisticsVO)throws Exception {
		
		logger.info("월별통계 처리");
		//price
		List<Long> monthlyTotalPriceList = new ArrayList<Long>();
		List<Long> monthlyStandardPriceList = new ArrayList<Long>();
		List<Long> monthlySuperiorPriceList = new ArrayList<Long>();
		List<Long> monthlyDeluxePriceList = new ArrayList<Long>();
		List<Long> monthlyRoyalPriceList = new ArrayList<Long>();
		//count
		List<Integer> monthlyTotalCountList = new ArrayList<Integer>();
		List<Integer> monthlyStandardCountList = new ArrayList<Integer>();
		List<Integer> monthlySuperiorCountList = new ArrayList<Integer>();
		List<Integer> monthlyDeluxeCountList = new ArrayList<Integer>();
		List<Integer> monthlyRoyalCountList = new ArrayList<Integer>();
		
		//요청해온 년도SET
		incomeStatisticsVO.setDay1(incomeStatisticsVO.getDay1() + incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay2(incomeStatisticsVO.getDay2() + incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay3(incomeStatisticsVO.getDay3() + incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay4(incomeStatisticsVO.getDay4() + incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay5(incomeStatisticsVO.getDay5() + incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay6(incomeStatisticsVO.getDay6() + incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay7(incomeStatisticsVO.getDay7() + incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay8(incomeStatisticsVO.getDay8() + incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay9(incomeStatisticsVO.getDay9() + incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay10(incomeStatisticsVO.getDay10() + incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay11(incomeStatisticsVO.getDay11() + incomeStatisticsVO.getChoiceDate());
		incomeStatisticsVO.setDay12(incomeStatisticsVO.getDay12() + incomeStatisticsVO.getChoiceDate());
		
		//service
		monthlyTotalPriceList = reservationService.selectMonthlyTotalPrice(incomeStatisticsVO);
		monthlyTotalCountList = reservationService.selectMonthlyTotalCount(incomeStatisticsVO);
		incomeStatisticsVO.setGuestRoomName(incomeStatisticsVO.getStandard());
		monthlyStandardPriceList = reservationService.selectMonthlyGuestRoomPrice(incomeStatisticsVO);
		monthlyStandardCountList = reservationService.selectMonthlyGuestRoomCount(incomeStatisticsVO);
		incomeStatisticsVO.setGuestRoomName(incomeStatisticsVO.getSuperior());
		monthlySuperiorPriceList = reservationService.selectMonthlyGuestRoomPrice(incomeStatisticsVO);
		monthlySuperiorCountList = reservationService.selectMonthlyGuestRoomCount(incomeStatisticsVO);
		incomeStatisticsVO.setGuestRoomName(incomeStatisticsVO.getDeluxe());
		monthlyDeluxePriceList = reservationService.selectMonthlyGuestRoomPrice(incomeStatisticsVO);
		monthlyDeluxeCountList = reservationService.selectMonthlyGuestRoomCount(incomeStatisticsVO);
		incomeStatisticsVO.setGuestRoomName(incomeStatisticsVO.getRoyal());
		monthlyRoyalPriceList = reservationService.selectMonthlyGuestRoomPrice(incomeStatisticsVO);
		monthlyRoyalCountList = reservationService.selectMonthlyGuestRoomCount(incomeStatisticsVO);
		
		
		// totalPrice/Count 확인 및 합집함 처리
		System.out.println("TotalPrice/Count");
		for(int index = 0; index < monthlyTotalPriceList.size(); index++) {
			System.out.println((index+1) + "월 통계 Price : " + monthlyTotalPriceList.get(index));
			System.out.println((index+1) + "월 통계 Count : " + monthlyTotalCountList.get(index));
			incomeStatisticsVO.setTotalSumPrice(incomeStatisticsVO.getTotalSumPrice()+monthlyTotalPriceList.get(index));
			incomeStatisticsVO.setTotalSumCount(incomeStatisticsVO.getTotalSumCount()+monthlyTotalCountList.get(index));
		}
		// totalPrice/Count 평균 구하고 합집합/평균 확인
 		incomeStatisticsVO.setTotalAveragePrice(incomeStatisticsVO.getTotalSumPrice()/12);
 		incomeStatisticsVO.setTotalAverageCount(incomeStatisticsVO.getTotalSumCount()/12);
 		System.out.println("TotalSumPrice : " + incomeStatisticsVO.getTotalSumPrice());
 		System.out.println("TotalSumCount : " + incomeStatisticsVO.getTotalSumCount());
 		System.out.println("TotalAveragePrice : " + incomeStatisticsVO.getTotalAveragePrice());
 		System.out.println("TotalAverageCount : " + incomeStatisticsVO.getTotalAverageCount());
 		
		// 이제 이짓거리 객실별 반복 작업 시작
 		// 스탠다드
 		System.out.println("StandardPrice/Count");
 		for(int index = 0; index < monthlyStandardPriceList.size(); index++) {
 			System.out.println((index+1) + "월 통계 Price : " + monthlyStandardPriceList.get(index));
			System.out.println((index+1) + "월 통계 Count : " + monthlyStandardCountList.get(index));
 			incomeStatisticsVO.setStandardTotalPrice(incomeStatisticsVO.getStandardTotalPrice()+monthlyStandardPriceList.get(index));
 			incomeStatisticsVO.setStandardTotalCount(incomeStatisticsVO.getStandardTotalCount()+monthlyStandardCountList.get(index));
 		}
 		incomeStatisticsVO.setStandardAveragePrice(incomeStatisticsVO.getStandardTotalPrice()/12);
 		incomeStatisticsVO.setStandardAverageCount(incomeStatisticsVO.getStandardTotalCount()/12);
 		System.out.println("StandardTotalPrice : " + incomeStatisticsVO.getStandardTotalPrice());
 		System.out.println("StandardTotalCount : " + incomeStatisticsVO.getStandardTotalCount());
 		System.out.println("StandardAveragePrice : " + incomeStatisticsVO.getStandardAveragePrice());
 		System.out.println("StandardAverageCount : " + incomeStatisticsVO.getStandardAverageCount());
 		
 		
 		//슈페리어
 		System.out.println("SuperiorPrice/Count");
 		for(int index = 0; index < monthlySuperiorPriceList.size(); index++) {
 			System.out.println((index+1) + "월 통계 Price : " + monthlySuperiorPriceList.get(index));
			System.out.println((index+1) + "월 통계 Count : " + monthlySuperiorCountList.get(index));
 			incomeStatisticsVO.setSuperiorTotalPrice(incomeStatisticsVO.getSuperiorTotalPrice()+monthlySuperiorPriceList.get(index));
 			incomeStatisticsVO.setSuperiorTotalCount(incomeStatisticsVO.getSuperiorTotalCount()+monthlySuperiorCountList.get(index));
 		}
 		incomeStatisticsVO.setSuperiorAveragePrice(incomeStatisticsVO.getSuperiorTotalPrice()/12);
 		incomeStatisticsVO.setSuperiorAverageCount(incomeStatisticsVO.getSuperiorTotalCount()/12);
 		System.out.println("SuperiorTotalPrice : " + incomeStatisticsVO.getSuperiorTotalPrice());
 		System.out.println("SuperiorTotalCount : " + incomeStatisticsVO.getSuperiorTotalCount());
 		System.out.println("SuperiorAveragePrice : " + incomeStatisticsVO.getSuperiorAveragePrice());
 		System.out.println("SuperiorAverageCount : " + incomeStatisticsVO.getSuperiorAverageCount());
 		
 		
 		//디럭스
 		System.out.println("DeluxePrice/Count");
 		for(int index = 0; index < monthlyDeluxePriceList.size(); index++) {
 			System.out.println((index+1) + "월 통계 Price : " + monthlyDeluxePriceList.get(index));
			System.out.println((index+1) + "월 통계 Count : " + monthlyDeluxeCountList.get(index));
 			incomeStatisticsVO.setDeluxeTotalPrice(incomeStatisticsVO.getDeluxeTotalPrice()+monthlyDeluxePriceList.get(index));
 			incomeStatisticsVO.setDeluxeTotalCount(incomeStatisticsVO.getDeluxeTotalCount()+monthlyDeluxeCountList.get(index));
 		}
 		incomeStatisticsVO.setDeluxeAveragePrice(incomeStatisticsVO.getDeluxeTotalPrice()/12);
 		incomeStatisticsVO.setDeluxeAverageCount(incomeStatisticsVO.getDeluxeTotalCount()/12);
 		System.out.println("DeluxeTotalPrice : " + incomeStatisticsVO.getDeluxeTotalPrice());
 		System.out.println("DeluxeTotalCount : " + incomeStatisticsVO.getDeluxeTotalCount());
 		System.out.println("DeluxeAveragePrice : " + incomeStatisticsVO.getDeluxeAveragePrice());
 		System.out.println("DeluxeAverageCount : " + incomeStatisticsVO.getDeluxeAverageCount());
 		
 		
 		//로얄
 		System.out.println("RoyalPrice/Count");
 		for(int index = 0; index < monthlyRoyalPriceList.size(); index++) {
 			System.out.println((index+1) + "월 통계 Price : " + monthlyRoyalPriceList.get(index));
			System.out.println((index+1) + "월 통계 Count : " + monthlyRoyalCountList.get(index));
 			incomeStatisticsVO.setRoyalTotalPrice(incomeStatisticsVO.getRoyalTotalPrice()+monthlyRoyalPriceList.get(index));
 			incomeStatisticsVO.setRoyalTotalCount(incomeStatisticsVO.getRoyalTotalCount()+monthlyRoyalCountList.get(index));
 		}
 		incomeStatisticsVO.setRoyalAveragePrice(incomeStatisticsVO.getRoyalTotalPrice()/12);
 		incomeStatisticsVO.setRoyalAverageCount(incomeStatisticsVO.getRoyalTotalCount()/12);
 		System.out.println("RoyalTotalPrice : " + incomeStatisticsVO.getRoyalTotalPrice());
 		System.out.println("RoyalTotalCount : " + incomeStatisticsVO.getRoyalTotalCount());
 		System.out.println("RoyalAveragePrice : " + incomeStatisticsVO.getRoyalAveragePrice());
 		System.out.println("RoyalAverageCount : " + incomeStatisticsVO.getRoyalAverageCount());
 		
 		
 		
		
		
		return "/incomestatisticsAdmin/incomeStatisticsMain";
	
	}
	
}
