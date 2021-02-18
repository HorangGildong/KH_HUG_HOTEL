package kr.iei.hotel.member.repository;

import java.util.List;
import java.util.Optional;

import kr.iei.hotel.member.dao.Member;

public interface MemberRepository {

	Member register(Member member);
	Optional<Member> findByEmail(String memberEmail);
	Optional<Member> findByPhone(String memberPhone);
	List<Member> findAll();
	
}
