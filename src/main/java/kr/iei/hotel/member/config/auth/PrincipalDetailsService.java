package kr.iei.hotel.member.config.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.service.MemberService;

// 시큐리티 설정에서 loginProcessingUrl("/loginProc") 요청이 들어오면 여기서 진행됨
// "/loginProc"요청이 오면 자동으로 UserDetailsService 타입으로 IoC(@Service)되어 있는 loadUserByUsername 함수가 실행
@Service
public class PrincipalDetailsService implements UserDetailsService {

	@Autowired
	private MemberService memberService;
	
	// MamberDetails로 리턴됨 (Authentication 타입 객체)
	// 로그인 요청 처리(username, password)
	// password부분은 알아서 처리함(username이 DB에 있는지만 확인)
	@Override
	public UserDetails loadUserByUsername(String memberId) throws UsernameNotFoundException {
		MemberDto memberDto = memberService.searchById(memberId);
		/*
		MemberDto memberDto = memberDao.findByEmail(memberEmail)
			.orElseThrow(() -> { return new UsernameNotFoundException("해당 사용자자를 찾을 수 없습니다. : " + memberEmail)
		*/
		if(memberDto == null) {
			return null;
		}
		return new PrincipalDetails(memberDto);
	}
	
}
