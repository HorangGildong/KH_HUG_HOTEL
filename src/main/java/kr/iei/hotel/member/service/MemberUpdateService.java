package kr.iei.hotel.member.service;

import kr.iei.hotel.member.dto.MemberDto;

public interface MemberUpdateService {

	int join(MemberDto memberDto);
	
	int joinOAuth2(MemberDto memberDto);

	int changePassword(String memberEmail, String newEncodedPassword);
	
	int deleteReply(MemberDto memberDto);
	
	int unRegister(MemberDto memberDto);
	
	int updatePwChangeDate(MemberDto memberDto);
	
	int addKey(MemberDto memberDto);
	
	int update(MemberDto memberDto);
	
}
