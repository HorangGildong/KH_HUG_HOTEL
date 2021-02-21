package kr.iei.hotel.member.config.auth;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.core.user.OAuth2User;

import kr.iei.hotel.member.dto.MemberDto;

// '/login'호출시 여기서 진행
// 로그인 완료시 시큐리티 세션 생성(Security ContextHolder)
// Authentication 타입 객체(세션에 저장될 오브젝트) -> Member정보

public class PrincipalDetails implements UserDetails, OAuth2User {

	private MemberDto memberDto;
	private Map<String, Object> attributes;

	// 일반 로그인
	public PrincipalDetails(MemberDto memberDto) {
		this.memberDto = memberDto;
	}
	
	public MemberDto getMemberDto() {
		return memberDto;
	}
	
	// OAuth 로그인
	public PrincipalDetails(MemberDto memberDto, Map<String, Object> attributes) {
		this.memberDto = memberDto;
		this.attributes = attributes;
	}

	// 권한 (원래 권한이 여러개 있을 수 있으므로 Collection 루프 돌려야 함)
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		Collection<GrantedAuthority> collect = new ArrayList<>();
//		collect.add(new GrantedAuthority() {
//			@Override
//			public String getAuthority() {
//				return memberDto.getMemberRole();	// "ROLE_" + @가 되어야 함
//			}
//		});
		collect.add( () -> { return memberDto.getMemberRole();});
		return collect;
	}

	// 권한 (String)
	public String getRole() {
		return memberDto.getMemberRole();
	}
	
	// 비밀번호
	@Override
	public String getPassword() {
		return memberDto.getMemberPassword();
	}

	// 이름
	@Override
	public String getUsername() {
		return memberDto.getMemberName();
	}
	
	// 이메일
	public String getEmail() {
		return memberDto.getMemberEmail();
	}
	
	// 닉네임
	public String getNick() {
		return memberDto.getMemberNick();
	}
	
	// 등급
	public String getGrade() {
		return memberDto.getMemberGrade();
	}
	
	// 전화번호
	public String getPhone() {
		return memberDto.getMemberPhone();
	}

	// 계정 만료(false) 여부
	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	// 계정 정지(false) 여부
	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	// 계정 신용(false) 여부 (예 : 비밀번호 변경기간 경과 여부)
	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	// 계정 활성(false) 여부 (예 : 최종 로그인 후 일정기간 경과 여부 -> 휴면계정)
	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public Map<String, Object> getAttributes() {
		return attributes;
	}

	@Override
	public String getName() {
		return null;
	}
	
}
