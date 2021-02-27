package kr.iei.hotel.member.service;

import java.util.List;

import kr.iei.hotel.member.dto.MemberDto;

public interface MemberGetDtoService {

	MemberDto getMemberDtoById(String memberId);

	MemberDto getMemberDtoByKey(String memberKey);
	
	MemberDto getMemberDtoByIdAndEmail(String memberId, String memberEmail);
	
	List<MemberDto> getMemberDtoListByNameAndPhone(String memberName, String memberPhone);
	
}
