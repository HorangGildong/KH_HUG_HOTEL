package kr.iei.hotel.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.iei.hotel.member.dao.MemberGetDtoDao;
import kr.iei.hotel.member.dto.MemberDto;

@Service
public class MemberGetDtoServiceImp implements MemberGetDtoService {

	@Autowired
	private MemberGetDtoDao memberGetDtoDao;
	
	@Override
	public MemberDto getMemberDtoById(String memberId) {
		return memberGetDtoDao.getMemberDtoById(memberId);
	}
	
	@Override
	public MemberDto getMemberDtoByKey(String memberKey) {
		return memberGetDtoDao.getMemberDtoByKey(memberKey);
	}
	
	@Override
	public MemberDto getMemberDtoByIdAndEmail(String memberId, String memberEmail) {
		return memberGetDtoDao.getMemberDtoByIdAndEmail(memberId, memberEmail);
	}
	
	@Override
	public List<MemberDto> getMemberDtoListByNameAndPhone(String memberName, String memberPhone) {
		return memberGetDtoDao.getMemberDtoListByNameAndPhone(memberName, memberPhone);
	}
	
}
