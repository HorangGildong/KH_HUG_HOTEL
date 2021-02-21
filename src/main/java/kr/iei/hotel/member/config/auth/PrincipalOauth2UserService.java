package kr.iei.hotel.member.config.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.service.MemberService;

@Service
public class PrincipalOauth2UserService extends DefaultOAuth2UserService {

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Autowired
	private MemberService memberService;
	
	// 구글로부터 받은 userRequest 데이터를 후처리
	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		System.out.println("test");
		OAuth2User oAuth2User = super.loadUser(userRequest);
//		String memberProvider = userRequest.getClientRegistration().getClientId();	// google
		String memberKey = oAuth2User.getAttribute("sub");							// 114558055230202652163
		System.out.println(memberKey);
		String memberEmail = oAuth2User.getAttribute("email");
		System.out.println(memberEmail);
		
		MemberDto memberDto = memberService.findByKey(memberKey);
		if (memberDto == null) {
			memberService.oAuth2join(memberKey, memberEmail);
			memberDto = memberService.findByKey(memberKey);
		}
		System.out.println(memberDto);
		return new PrincipalDetails(memberDto, oAuth2User.getAttributes());
	}

	
	
}
