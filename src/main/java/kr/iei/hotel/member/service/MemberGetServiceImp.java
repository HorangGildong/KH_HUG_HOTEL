package kr.iei.hotel.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.iei.hotel.member.dao.MemberGetDao;
import kr.iei.hotel.member.dto.MemberDto;

@Service
public class MemberGetServiceImp implements MemberGetService {

	@Autowired
	private MemberGetDao memberGetDao;
	
	@Override
	public MemberDto getMemberDtoByEmail(String memberEmail) {
		return memberGetDao.getMemberDtoByEmail(memberEmail);
	}
	
	@Override
	public MemberDto getMemberDtoByEmail(MemberDto memberDto) {
		return getMemberDtoByEmail(memberDto.getMemberEmail());
	}
	
	@Override
	public MemberDto getMemberDtoByKey(String memberKey) {
		return memberGetDao.getMemberDtoByKey(memberKey);
	}
	
	@Override
	public MemberDto getMemberDtoByKey(MemberDto memberDto) {
		return getMemberDtoByKey(memberDto.getMemberKey());
	}
	
	@Override
	public List<MemberDto> getMemberDtoListByNameAndPhone(String memberName, String memberPhone) {
		return memberGetDao.getMemberDtoListByNameAndPhone(memberName, memberPhone);
	}
	
	@Override
	public int checkEmail(String memberEmail) {
		return memberGetDao.checkEmail(memberEmail);
	}
	
	@Override
	public int checkNick(String memberNick) {
		return memberGetDao.checkNick(memberNick);
	}
}
