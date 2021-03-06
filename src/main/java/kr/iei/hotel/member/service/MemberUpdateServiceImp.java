package kr.iei.hotel.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.iei.hotel.member.dao.MemberUpdateDao;
import kr.iei.hotel.member.dto.MemberDto;

@Service
public class MemberUpdateServiceImp implements MemberUpdateService {
	
	@Autowired
	MemberUpdateDao memberUpdateDao;	
	
	@Override
	public int join(MemberDto memberDto) {
		return memberUpdateDao.join(memberDto);
	}
	
	@Override
	public int joinOAuth2(MemberDto memberDto) {
		return memberUpdateDao.joinOAuth2(memberDto);
	}
	
	@Override
	public int changePassword(String memberEmail, String newEncodedPassword) {
		return memberUpdateDao.changePassword(memberEmail, newEncodedPassword);
	}
	
	@Override
	public int deleteReply(MemberDto memberDto) {
		return memberUpdateDao.deleteReply(memberDto);
	}
	
	@Override
	public int unRegister(MemberDto memberDto) {
		return memberUpdateDao.unRegister(memberDto);
	}
	
	@Override
	public int updatePwChangeDate(MemberDto memberDto) {
		return memberUpdateDao.updatePwChangeDate(memberDto);
	}
	
	@Override
	public int addKey(MemberDto memberDto) {
		return memberUpdateDao.addKey(memberDto);
	}
	
	@Override
	public int update(MemberDto memberDto) {
		return memberUpdateDao.update(memberDto);
	}
	
}
