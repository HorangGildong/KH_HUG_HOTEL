//package kr.iei.hotel.member.config.auth;
//
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.stereotype.Service;
//
//import kr.iei.hotel.member.dao.MemberDao;
//import kr.iei.hotel.member.dto.MemberDto;
//
//// 시큐리티 설정에서 loginProcessingUrl("/login") 요청이 들어오면 여기서 진행됨
//// "/login"요청이 오면 자동으로 UserDetailsService 타입으로 IoC(@Service)되어 있는 loadUserByUsername 함수가 실행
//@Service
//public class PrincipalDetailsService implements UserDetailsService {
//
//	private MemberDao memberDao;
//	
//	// PrincipalDetails로 리턴됨 (Authentication 타입 객체)
//	@Override
//	public UserDetails loadUserByUsername(String memberEmail) throws UsernameNotFoundException {
//		MemberDto memberDto = memberDao.findByEmail(memberEmail);
//		if(memberDto != null) {
//			return new PrincipalDetails(memberDto);
//		}
//		return null;
//	}
//	
//}
