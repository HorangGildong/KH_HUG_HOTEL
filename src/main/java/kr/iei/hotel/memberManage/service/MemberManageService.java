package kr.iei.hotel.memberManage.service;

import kr.iei.hotel.member.dto.MemberDto;

public interface MemberManageService {
	
	int updateInfo(MemberDto memberDto);
	
	int deleteInfo(MemberDto memberDto);
	
}
