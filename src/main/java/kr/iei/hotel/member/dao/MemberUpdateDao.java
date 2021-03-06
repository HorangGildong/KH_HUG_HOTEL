package kr.iei.hotel.member.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import kr.iei.hotel.member.dto.MemberDto;

@Mapper
public interface MemberUpdateDao {
	
//	@Insert("INSERT INTO MEMBER ("
//			+ " memberNumber,		memberEmail,		memberPassword, 	memberName,"
//			+ " memberNick,			memberPhone,		memberRegDate,		memberUnRegDate,	memberPwChangeDate,"
//			+ " memberAgree,		memberGrade,		memberRole,			memberKey"
//			+ " )"
//			+ " VALUES"
//			+ " ("
//			+ " '${memberNumber}',	'${memberEmail}',	'${memberPassword}','${memberName}',"
//			+ " '${memberNick}',	'${memberPhone}',	SYSDATE,			'${memberUnRegDate}',SYSDATE,"
//			+ " '${memberAgree}',	'GRADE_GENERAL',	'ROLE_REGURAL',		'${memberKey}'"
//			+ " )")
//	int join(MemberJoinFormDto memberJoinFormDto);
	
	@Insert("INSERT INTO MEMBER ("
			+ " memberEmail,		memberPassword, 	memberName,			memberPhone,"
			+ " memberNick,			memberRegDate,		memberUnRegDate,	memberPwChangeDate,"
			+ " memberAgree,		memberGrade,		memberRole"
			+ " )"
			+ " VALUES"
			+ " ("
			+ " '${memberEmail}',	'${memberPassword}','${memberName}',	'${memberPhone}',"
			+ " '${memberNick}',	SYSDATE,			'${memberUnRegDate}',SYSDATE,"
			+ " '${memberAgree}',	'GRADE_GENERAL',	'ROLE_REGURAL'"
			+ " )")
	int join(MemberDto memberDto);
	
	@Insert("INSERT INTO MEMBER ("
			+ " memberEmail,"
			+ " memberNick,			memberRegDate,		memberUnRegDate,	memberPwChangeDate,"
			+ " memberAgree,		memberGrade,		memberRole"
			+ " )"
			+ " VALUES"
			+ " ("
			+ " '${memberEmail}',"
			+ " '${memberNick}',	SYSDATE,			'${memberUnRegDate}',SYSDATE,"
			+ " '${memberAgree}',	'GRADE_GENERAL',	'ROLE_REGURAL'"
			+ " )")
	int joinOAuth2(MemberDto memberDto);
	
	@Update("UPDATE MEMBER SET"
			+ " memberPassword = '${password}'"
			+ " WHERE memberEmail = '${memberEmail}'")
	int changePassword(String memberEmail, String password);

	@Update("UPDATE MEMBER SET"
			+ " memberKey = '${memberKey}'"
			+ " WHERE memberEmail = '${memberEmail}'")
	int addKey(MemberDto memberDto);
	
	@Update("UPDATE MEMBER SET"
			+ "	memberName = '${memberName}', memberNick = '${memberNick}',"
			+ " memberPhone = '${memberPhone}', memberAgree = '${memberAgree}'"
			+ " WHERE memberEmail = '${memberEmail}'")
	int update(MemberDto memberDto);
	
	@Update("UPDATE MEMBER SET"
			+ " memberPwChangeDate = ADD_MONTHS(SYSDATE, -2)"
			+ " WHERE memberEmail = '${memberEmail}'")
	int updatePwChangeDate(MemberDto memberDto);
	
	@Update("UPDATE MEMBER SET"
			+ "	memberEmail = NULL, memberPassword = NULL, memberName = NULL, memberNick = NULL,"
			+ "	memberPhone = NULL, memberUnRegDate = SYSDATE, memberAgree = NULL, memberRole = NULL, memberKey = NULL"
			+ " WHERE memberEmail = '${memberEmail}'")
	int unRegister(MemberDto memberDto);
	
	@Delete("DELETE FROM REPLY"
			+ " WHERE memberNumber = #{memberNumber}")
	int deleteReply(MemberDto memberDto);
}
