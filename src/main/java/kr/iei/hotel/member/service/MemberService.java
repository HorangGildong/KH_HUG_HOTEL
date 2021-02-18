package kr.iei.hotel.member.service;

import kr.iei.hotel.member.dto.AuthInfoDto;
import kr.iei.hotel.member.dto.MemberLoginFormDto;

public interface MemberService {

	AuthInfoDto getAuthInfoDto(MemberLoginFormDto memberLoginFormDto);

}
