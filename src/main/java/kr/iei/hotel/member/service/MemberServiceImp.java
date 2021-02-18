package kr.iei.hotel.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.iei.hotel.member.dao.MemberDao;
import kr.iei.hotel.member.dto.AuthInfoDto;
import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.dto.MemberLoginFormDto;

@Service
public class MemberServiceImp implements MemberService {

	@Autowired
	private MemberDao memberDao;
	
    @Autowired
    private BCryptPasswordEncoder passwordEncoder;
	
	
	@Override
	public AuthInfoDto getAuthInfoDto(MemberLoginFormDto memberLoginFormDto) {
		MemberDto memberDto = memberDao.findByEmail(memberLoginFormDto.getMemberEmail());
		
		String test = passwordEncoder.encode(memberLoginFormDto.getMemberEmail());
		System.out.println(test);
		return new AuthInfoDto(memberDto.getMemberId(), memberDto.getMemberNick(), memberDto.getMemberGrade(), memberDto.getMemberRole());		
	}

}
