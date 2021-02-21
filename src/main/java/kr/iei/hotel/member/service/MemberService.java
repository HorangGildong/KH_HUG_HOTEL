package kr.iei.hotel.member.service;

import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.dto.MemberJoinFormDto;

public interface MemberService {

	void join(MemberJoinFormDto memberJoinFormDto);

	void oAuth2join(String memberKey, String memberEmail);
	
	int checkEmail(String memberEmail);

	int checkNick(String memberNick);

	MemberDto findByKey(String memberKey);

}
