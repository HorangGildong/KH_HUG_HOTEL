package kr.iei.hotel.member.service;

import java.util.List;

import kr.iei.hotel.member.dto.MemberDto;

public interface MemberGetService {
	
	MemberDto getMemberDtoByEmail(String memberEmail);

	MemberDto getMemberDtoByKey(String memberKey);
	
	List<MemberDto> getMemberDtoListByNameAndPhone(String memberName, String memberPhone);
	
	int checkEmail(String memberEmail);

	int checkNick(String memberNick);
}
