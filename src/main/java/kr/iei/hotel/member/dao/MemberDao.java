package kr.iei.hotel.member.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.dto.MemberJoinFormDto;
import kr.iei.hotel.member.dto.MemberOAuth2JoinFormDto;

@Mapper
public interface MemberDao {

	@Select("SELECT * FROM MEMBER WHERE memberEmail = '${memberEmail}'")
	MemberDto findByEmail(String memberEmail);

	@Select("SELECT * FROM MEMBER WHERE memberKey = '${memberKey}'")
	MemberDto findByKey(String memberKey);
	
	@Insert("INSERT INTO MEMBER ("
			+ " memberEmail, memberName, memberRegDate, memberPwChangeDate, memberNick,"
			+ " memberPhone, memberGender, memberPassword, memberBirth, memberAgree)"
			+ " VALUES("
			+ " '${memberEmail}', '${memberName}', SYSDATE, SYSDATE, '${memberNick}',"
			+ " '${memberPhone}', '${memberGender}', '${memberPassword}', '${memberBirth}', '${memberAgree}'"
			+ " )")
	void join(MemberJoinFormDto memberJoinFormDto);
	
	@Insert("INSERT INTO MEMBER ("
			+ " memberKey, memberEmail, memberRole)"
			+ " VALUES("
			+ " '${memberKey}', '${memberEmail}', 'ROLE_ASSOCIATE'"
			+ " )")
	void autoJoin(String memberKey, String memberEmail);
	
	@Update("UPDATE MEMBER SET"
			+ " memberEmail = '${memberEmail}', memberName = '${memberName}', memberRegDate = SYSDATE,"
			+ " memberNick = '${memberNick}', memberRole = 'ROLE_REGURAL', memberPhone = '${memberPhone}',"
			+ " memberGender = '${memberGender}', memberBirth = '${memberBirth}', memberAgree = '${memberAgree}'"
			+ " WHERE memberKey = '${memberKey}'")
	void oAuth2Join(MemberOAuth2JoinFormDto memberOAuth2JoinFormDto);
	
	@Select("SELECT COUNT(*) FROM MEMBER WHERE memberEmail = '${memberEmail}'")
	int checkEmail(String memberEmail);

	@Select("SELECT COUNT(*) FROM MEMBER WHERE memberNick = '${memberNick}'")
	int checkNick(String memberNick);


}