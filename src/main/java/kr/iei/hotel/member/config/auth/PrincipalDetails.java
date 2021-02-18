//package kr.iei.hotel.member.config.auth;
//
//import java.util.ArrayList;
//import java.util.Collection;
//
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.userdetails.UserDetails;
//
//import kr.iei.hotel.member.dto.AuthInfoDto;
//import kr.iei.hotel.member.dto.MemberDto;
//
//// '/login'호출시 여기서 진행
//// 로그인 완료시 시큐리티 세션 생성(Security ContextHolder)
//// Authentication 타입 객체(세션에 저장될 오브젝트) -> Member정보
//
//public class PrincipalDetails implements UserDetails {
//
//	private MemberDto memberDto;
//
//	public PrincipalDetails(MemberDto memberDto) {
//		this.memberDto = memberDto;
//	}
//
//	// 권한
//	@Override
//	public Collection<? extends GrantedAuthority> getAuthorities() {
//		Collection<GrantedAuthority> collect = new ArrayList<>();
//		collect.add(new GrantedAuthority() {
//			@Override
//			public String getAuthority() {
//				return Integer.toString(memberDto.getMemberRole());		// DB에서 데이터형식 변경할 것
//			}
//		});
//		return collect;
//	}
//
//	// 비밀번호
//	@Override
//	public String getPassword() {
//		return memberDto.getMemberPassword();
//	}
//
//	// 이름
//	@Override
//	public String getUsername() {
//		return memberDto.getMemberName();
//	}
//
//	// 계정 만료(false) 여부
//	@Override
//	public boolean isAccountNonExpired() {
//		return true;
//	}
//
//	// 계정 정지(false) 여부
//	@Override
//	public boolean isAccountNonLocked() {
//		// TODO Auto-generated method stub
//		return true;
//	}
//
//	// 계정 신용(false) 여부 (예 : 비밀번호 변경기간 경과 여부)
//	@Override
//	public boolean isCredentialsNonExpired() {
//		// TODO Auto-generated method stub
//		return true;
//	}
//
//	// 계정 활성(false) 여부 (예 : 최종 로그인 후 일정기간 경과 여부 -> 휴면계정)
//	@Override
//	public boolean isEnabled() {
//		// TODO Auto-generated method stub
//		return true;
//	}
//	
//	
//}
