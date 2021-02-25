package kr.iei.hotel.member.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.dto.MemberIdDto;
import kr.iei.hotel.member.dto.MemberJoinFormDto;
import kr.iei.hotel.member.dto.MemberOAuth2JoinFormDto;

@Mapper
public interface MemberDao {

	@Insert("INSERT INTO MEMBER ("
			+ " memberId, memberEmail, memberName, memberRegDate, memberPwChangeDate, memberNick,"
			+ " memberPhone, memberGender, memberPassword, memberBirth, memberAgree)"
			+ " VALUES("
			+ " '${memberId}', '${memberEmail}', '${memberName}', SYSDATE, SYSDATE, '${memberNick}',"
			+ " '${memberPhone}', '${memberGender}', '${memberPassword}', '${memberBirth}', '${memberAgree}'"
			+ " )")
	void join(MemberJoinFormDto memberJoinFormDto);
	
	@Insert("INSERT INTO MEMBER ("
			+ " memberKey, memberEmail, memberRole)"
			+ " VALUES("
			+ " '${memberKey}', '${memberEmail}', 'ROLE_ASSOCIATE'"
			+ " )")
	void autoJoin(String memberKey, String memberEmail);
	
	@Insert("INSERT INTO MEMBER ("
			+ " memberId, memberEmail, memberName, memberRegDate, memberNick,"
			+ " memberPhone, memberGender, memberBirth, memberAgree, memberKey)"
			+ " VALUES("
			+ " '${memberId}', '${memberEmail}', '${memberName}', SYSDATE, '${memberNick}',"
			+ " '${memberPhone}', '${memberGender}', '${memberBirth}', '${memberAgree}', '${memberKey}'"
			+ " )")
	void oAuth2Join(MemberOAuth2JoinFormDto memberOAuth2JoinFormDto);
	
	@Select("SELECT * FROM MEMBER WHERE memberId = '${memberId}'")
	MemberDto searchById(String memberId);

	@Select("SELECT * FROM MEMBER WHERE memberKey = '${memberKey}'")
	MemberDto searchByKey(String memberKey);
	
	@Select("SELECT memberId, memberRegDate FROM MEMBER WHERE memberName = '${memberName}' AND memberPhone = '${memberPhone}'")
	List<MemberIdDto> searchIds(String memberName, String memberPhone);
	
	@Select("SELECT COUNT(*) FROM MEMBER WHERE memberId = '${memberId}' AND memberEmail = '${memberEmail}'")
	int searchId(String memberId, String memberEmail);
	
	@Select("SELECT COUNT(*) FROM MEMBER WHERE memberId = '${memberId}'")
	int checkId(String memberId);

	@Select("SELECT COUNT(*) FROM MEMBER WHERE memberNick = '${memberNick}'")
	int checkNick(String memberNick);

	@Update("UPDATE MEMBER SET"
			+ " memberPwChangeDate = ADD_MONTHS(SYSDATE, -2)"
			+ " WHERE memberId = '${memberId}'")
	void updatePwChangeDate(String memberId);

}
