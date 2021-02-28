package kr.iei.hotel.member.service;

import kr.iei.hotel.member.dto.MemberJoinFormDto;

public interface MemberJoinService {

	void join(MemberJoinFormDto memberJoinFormDto);

	int checkId(String memberId);

	int checkNick(String memberNick);

	String passwordEncode(String memberPassword);
	
	void changePassword(String memberId, String Password);
	
}
