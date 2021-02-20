package kr.iei.hotel.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.iei.hotel.member.dao.MemberDao;
import kr.iei.hotel.member.dto.MemberJoinFormDto;

@Service
public class MemberServiceImp implements MemberService {

	@Autowired
	private MemberDao memberDao;
	
	@Override
	public void join(MemberJoinFormDto memberJoinFormDto) {
		memberDao.join(memberJoinFormDto);		
	}
	
	@Override
	public int emailCheck(String memberEmail) {
		return memberDao.emailCheck(memberEmail);
	}
	
	@Override
	public int nickCheck(String memberNick) {
		return memberDao.nickCheck(memberNick);
	}
}
