package kr.iei.hotel.memberManage.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import kr.iei.hotel.member.dto.MemberDto;

@Mapper
public interface MemberManageDao {
	
	// @Update("UPDATE MEMBER SET memberNick= '${memberNick}', memberPhone =
	// '${memberPhone}', memberGender = '${memberGender}' WHERE memberId =
	// '${memberId}' AND memberPassword = '${memberPassword}'")
	@Update("UPDATE MEMBER SET memberNick= '${memberNick}', memberPhone = '${memberPhone}', memberGender = '${memberGender}' WHERE memberId = '${memberId}'")
	int updateInfo(MemberDto memberDto);

	@Delete("DELETE FROM MEMBER WHERE memberId = '${memberId}'")
	int deleteInfo(MemberDto memberDto);
	
}