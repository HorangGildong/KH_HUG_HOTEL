package kr.iei.hotel.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.iei.hotel.member.dao.MemberManageDao;
import kr.iei.hotel.member.dto.MemberDto;

@Service
public class MemberManageServiceImp implements MemberManageService {

	@Autowired
	private MemberManageDao memberManageDao;
	
	@Override
	public int deleteInfo(MemberDto memberDto) {
		return memberManageDao.updateInfo(memberDto);
	}
	
	@Override
	public int updateInfo(MemberDto memberDto) {
		return memberManageDao.deleteInfo(memberDto);
	}

}
