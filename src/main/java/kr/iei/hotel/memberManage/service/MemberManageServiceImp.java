package kr.iei.hotel.memberManage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.memberManage.dao.MemberManageDao;

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
