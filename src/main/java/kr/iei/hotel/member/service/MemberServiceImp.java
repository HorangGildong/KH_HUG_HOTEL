package kr.iei.hotel.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.iei.hotel.member.dao.MemberDao;
import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.dto.MemberIdDto;
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
	public MemberDto searchByKey(String memberKey) {
		return memberDao.searchByKey(memberKey);
	}
	
	@Override
	public MemberDto searchById(String memberId) {
		return memberDao.searchById(memberId);
	}
	
	@Override
	public List<MemberIdDto> searchIds(String memberName, String memberPhone) {
		return memberDao.searchIds(memberName, memberPhone);
	}
	
	@Override
	public int searchId(String memberId, String memberEmail) {
		return memberDao.searchId(memberId, memberEmail);
	}
	
	@Override
	public int checkId(String memberId) {
		return memberDao.checkId(memberId);
	}
	
	@Override
	public int checkNick(String memberNick) {
		return memberDao.checkNick(memberNick);
	}
	
	@Override
	public void updatePwChangeDate(String memberId) {
		memberDao.updatePwChangeDate(memberId);
	}
	
}
