package kr.iei.hotel.member.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.dto.MemberJoinFormDto;

@Mapper
public interface MemberDao {

	@Select("SELECT * FROM MEMBER WHERE memberEmail = '${memberEmail}'")
	MemberDto findByEmail(String memberEmail);

	@Insert("INSERT INTO MEMBER ("
			+ " memberEmail, memberName, memberRegDate, memberPwChangeDate, memberNick,"
			+ " memberPhone, memberGender, memberPassword, memberBirth, memberAgree)"
			+ " VALUES("
			+ " '${memberEmail}', '${memberName}', SYSDATE, SYSDATE, '${memberNick}',"
			+ " '${memberPhone}', '${memberGender}', '${memberPassword}', '${memberBirth}', '${memberAgree}'"
			+ " )")
	void join(MemberJoinFormDto memberJoinFormDto);
	
	@Select("SELECT COUNT(*) FROM MEMBER WHERE memberEmail = '${memberEmail}'")
	int emailCheck(String memberEmail);

	@Select("SELECT COUNT(*) FROM MEMBER WHERE memberNick = '${memberNick}'")
	int nickCheck(String memberNick);
	

}
