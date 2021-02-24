package kr.iei.hotel.member.service;

import kr.iei.hotel.member.dto.MemberDto;

public interface MemberManageService {
	
	int updateInfo(MemberDto memberDto);
	
	int deleteInfo(MemberDto memberDto);
	
}
