package kr.iei.hotel.member.service;

import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.dto.MemberJoinFormDto;

public interface MemberUpdateService {

	int join(MemberJoinFormDto memberJoinFormDto);

	int changePassword(String memberEmail, String Password);
	
	int deleteReply(MemberDto memberDto);
	
	int unRegister(MemberDto memberDto);
	
	int updatePwChangeDate();
	
	int addKey(String memberEmail, String memberKey);
	
	int update(MemberDto memberDto);
	
}
