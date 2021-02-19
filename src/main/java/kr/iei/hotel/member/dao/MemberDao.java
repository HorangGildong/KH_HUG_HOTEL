package kr.iei.hotel.member.dao;

import java.util.Optional;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.iei.hotel.member.dto.MemberDto;

@Mapper
public interface MemberDao {

	@Select("SELECT * FROM MEMBER WHERE memberEmail = '${memberEmail}'")
	Optional<MemberDto> findByEmail(String memberEmail);

}
