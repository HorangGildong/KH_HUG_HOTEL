package kr.iei.hotel.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.iei.hotel.member.dao.MemberJoinDao;
import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.dto.MemberJoinFormDto;

@Service
public class MemberJoinServiceImp implements MemberJoinService {

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private MemberJoinDao memberJoinDao;
	
	@Autowired
	private MemberLoginService memberLoginService;
	
	@Autowired
	private MemberGetDtoService memberGetDtoService;
	
	@Override
	public void join(MemberJoinFormDto memberJoinFormDto) {
		if(memberJoinFormDto.getMemberPassword() != null && memberJoinFormDto.getMemberKey() == null) {
			String password = passwordEncode(memberJoinFormDto.getMemberPassword());
			memberJoinFormDto.setMemberPassword(password);
		}
		memberJoinDao.join(memberJoinFormDto);
		MemberDto memberDto = memberGetDtoService.getMemberDtoById(memberJoinFormDto.getMemberId());
		memberLoginService.autoLogin(memberDto);
	}
	
	@Override
	public String passwordEncode(String memberPassword) {
		return passwordEncoder.encode(memberPassword);
	}
	
	@Override
	public int checkId(String memberId) {
		return memberJoinDao.checkId(memberId);
	}
	
	@Override
	public int checkNick(String memberNick) {
		return memberJoinDao.checkNick(memberNick);
	}
	
	@Override
	public void changePassword(String password, String memberId) {
		String memberPassword = passwordEncode(password);
		memberJoinDao.changePassword(memberPassword, memberId);
	}
}
