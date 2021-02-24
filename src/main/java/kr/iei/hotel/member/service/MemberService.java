package kr.iei.hotel.member.service;

import java.util.List;

import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.dto.MemberIdDto;
import kr.iei.hotel.member.dto.MemberJoinFormDto;
import kr.iei.hotel.member.dto.MemberOAuth2JoinFormDto;

public interface MemberService {

	void join(MemberJoinFormDto memberJoinFormDto);

	void autoJoin(String memberKey, String memberEmail);
	
	void oAuth2Join(MemberOAuth2JoinFormDto memberOAuth2JoinFormDto);
	
	int checkId(String memberId);

	int checkNick(String memberNick);
	
	MemberDto searchByKey(String memberKey);
	
	MemberDto searchById(String memberId);

	List<MemberIdDto> searchIds(String memberName, String memberPhone);

	void updatePwChangeDate(String memberId);
	
}
