package kr.iei.hotel.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.iei.hotel.member.dao.MemberDao;
import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.dto.MemberJoinFormDto;
import kr.iei.hotel.member.dto.MemberOAuth2JoinFormDto;

@Service
public class MemberServiceImp implements MemberService {

	@Autowired
	private MemberDao memberDao;
		
	@Override
	public void join(MemberJoinFormDto memberJoinFormDto) {
		memberDao.join(memberJoinFormDto);		
	}
	
	@Override
	public void autoJoin(String memberKey, String memberEmail) {
		memberDao.autoJoin(memberKey, memberEmail);
	}
	
	@Override
	public void oAuth2Join(MemberOAuth2JoinFormDto memberOAuth2JoinFormDto) {
		memberDao.oAuth2Join(memberOAuth2JoinFormDto);
	}
	
	@Override
	public MemberDto findByKey(String memberKey) {
		return memberDao.findByKey(memberKey);
	}
	
	@Override
	public int checkEmail(String memberEmail) {
		return memberDao.checkEmail(memberEmail);
	}
	
	@Override
	public int checkNick(String memberNick) {
		return memberDao.checkNick(memberNick);
	}
}
