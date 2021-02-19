package kr.iei.hotel.member.service;

import java.util.Optional;

import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.dto.MemberLoginFormDto;

public interface MemberService {

//	AuthInfoDto getAuthInfoDto(MemberLoginFormDto memberLoginFormDto);
	Optional<MemberDto> getMemberDto(MemberLoginFormDto memberLoginFormDto);

}
