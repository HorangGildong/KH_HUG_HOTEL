package kr.iei.hotel.member.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface MemberLoginDao {
	
	@Update("UPDATE MEMBER SET"
			+ " memberPwChangeDate = ADD_MONTHS(SYSDATE, -2)"
			+ " WHERE memberEmail = '${memberEmail}'")
	void updatePwChangeDate(String memberEmail);
	
}
