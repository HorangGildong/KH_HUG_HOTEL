package kr.iei.hotel.member.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.iei.hotel.member.dto.MemberJoinFormDto;

@Mapper
public interface MemberJoinDao {

	@Insert("INSERT INTO MEMBER ("
			+ " memberNumber,		memberId,			memberGrade,		memberRegDate,		memberUnRegDate,	memberPwChangeDate,"
			+ " memberAgree,		memberRole,			memberEmail,		memberName,			memberNick,"
			+ " memberPhone,		memberGender,		memberPassword, 	memberBirth, 		memberKey"
			+ " )"
			+ " VALUES"
			+ " ("
			+ " '${memberNumber}',	'${memberId}',		'GRADE_GENERAL',	SYSDATE,			'${memberUnRegDate}',	SYSDATE,"
			+ " '${memberAgree}',	'ROLE_REGURAL',		'${memberEmail}',	'${memberName}',	'${memberNick}',"
			+ " '${memberPhone}',	'${memberGender}',	'${memberPassword}','${memberBirth}',	'${memberKey}'"
			+ " )")
	void join(MemberJoinFormDto memberJoinFormDto);

	@Select("SELECT COUNT(*) FROM MEMBER WHERE memberId = '${memberId}'")
	int checkId(String memberId);

	@Select("SELECT COUNT(*) FROM MEMBER WHERE memberNick = '${memberNick}'")
	int checkNick(String memberNick);
	
	@Update("UPDATE MEMBER SET"
			+ " memberPassword = '${password}'"
			+ " WHERE memberId = '${memberId}'")
	void changePassword(String password, String memberId);
}
