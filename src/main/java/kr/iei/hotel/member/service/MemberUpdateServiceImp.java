package kr.iei.hotel.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import kr.iei.hotel.member.dao.MemberUpdateDao;
import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.dto.MemberJoinFormDto;

@Service
public class MemberUpdateServiceImp implements MemberUpdateService {

	@Autowired
	MemberService memberService;

	@Autowired
	MemberGetService memberGetService;
	
	@Autowired
	MemberUpdateDao memberUpdateDao;	
	
	@Override
	public int join(MemberJoinFormDto memberJoinFormDto) {
		if(memberJoinFormDto.getMemberPassword() != null && memberJoinFormDto.getMemberKey() == null) {
			String password = memberService.passwordEncode(memberJoinFormDto.getMemberPassword());
			memberJoinFormDto.setMemberPassword(password);
		}
		int count = memberUpdateDao.join(memberJoinFormDto);
		memberService.autoLogin(memberJoinFormDto);
		return count;
	}
	
	@Override
	public int changePassword(String memberEmail, String password) {
		String memberPassword = memberService.passwordEncode(password);
		int count = memberUpdateDao.changePassword(memberPassword, memberEmail);
		memberService.autoLogin(memberEmail);
		return count;
	}
	
	@Override
	public int addKey(String memberEmail, String memberKey) {
		int count = memberUpdateDao.addKey(memberEmail, memberKey);
		memberService.autoLogin(memberEmail);
		return count;
	}
	
	@Override
	public int updatePwChangeDate() {
		MemberDto memberDto = memberService.getSessionMemberDto();
		int count = memberUpdateDao.updatePwChangeDate(memberDto.getMemberEmail());
		memberService.autoLogin(memberDto.getMemberEmail());
		return count;
	}
	
	@Override
	public int unRegister(MemberDto memberDto) {
		int count = memberUpdateDao.unRegister(memberDto);
		SecurityContextHolder.clearContext();
		return count;
	}
	
	@Override
	public int deleteReply(MemberDto memberDto) {
		return memberUpdateDao.deleteReply(memberDto);
	}
	
	@Override
	public int update(MemberDto memberDto) {
		int count = memberUpdateDao.update(memberDto);
		memberService.autoLogin(memberDto.getMemberEmail());
		return count;
	}
	
}
