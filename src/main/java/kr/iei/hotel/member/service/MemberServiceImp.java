package kr.iei.hotel.member.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.iei.hotel.member.dao.MemberDao;
import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.dto.MemberLoginFormDto;

@Service
public class MemberServiceImp implements MemberService {

	@Autowired
	private MemberDao memberDao;	
	
//	@Override
//	public AuthInfoDto getAuthInfoDto(MemberLoginFormDto memberLoginFormDto) {
//		MemberDto memberDto = memberDao.findByEmail(memberLoginFormDto.getMemberEmail());
//		return new AuthInfoDto(memberDto.getMemberId(), memberDto.getMemberNick(), memberDto.getMemberGrade(), memberDto.getMemberRole());		
//	}


	@Override
	public Optional<MemberDto> getMemberDto(MemberLoginFormDto memberLoginFormDto) {
		Optional<MemberDto> memberDto = memberDao.findByEmail(memberLoginFormDto.getMemberEmail());
		return memberDto;
	}

}
