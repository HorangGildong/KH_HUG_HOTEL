package kr.iei.hotel.member.service;

import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.dto.MemberJoinFormDto;
import kr.iei.hotel.member.dto.MemberOAuth2JoinFormDto;

public interface MemberService {

	void join(MemberJoinFormDto memberJoinFormDto);

	void autoJoin(String memberKey, String memberEmail);
	
	void oAuth2Join(MemberOAuth2JoinFormDto memberOAuth2JoinFormDto);
	
	int checkId(String memberId);
	
	int checkEmail(String memberEmail);

	int checkNick(String memberNick);
	
	MemberDto findByKey(String memberKey);
	
	MemberDto findById(String memberId);

}
