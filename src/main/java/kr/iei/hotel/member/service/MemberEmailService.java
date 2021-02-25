package kr.iei.hotel.member.service;

import kr.iei.hotel.member.dto.MemberEmailDto;

public interface MemberEmailService {

	void sendEmail(MemberEmailDto memberEmailDto);

}
