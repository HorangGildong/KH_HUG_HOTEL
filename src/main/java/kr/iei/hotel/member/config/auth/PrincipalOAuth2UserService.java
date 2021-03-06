package kr.iei.hotel.member.config.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.service.MemberGetService;
import kr.iei.hotel.member.service.MemberService;
import kr.iei.hotel.member.service.MemberUpdateService;

@Service
public class PrincipalOAuth2UserService extends DefaultOAuth2UserService {

	@Autowired
	private MemberGetService memberGetService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private MemberUpdateService memberUpdateService;
	
	// 구글로부터 받은 userRequest 데이터를 후처리
	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		OAuth2User oAuth2User = super.loadUser(userRequest);
//		String memberProvider = userRequest.getClientRegistration().getClientId();
		String memberEmail = oAuth2User.getAttribute("email");
		String memberKey = oAuth2User.getAttribute("sub");
		MemberDto memberDto = memberGetService.getMemberDtoByEmail(memberEmail);
		if (memberDto == null) {
			memberDto = new MemberDto(memberEmail, "ROLE_ASSOCIATE", memberKey);
		} else {
			memberUpdateService.addKey(memberDto);
			memberService.autoLogin(memberDto);
		}
		return new PrincipalDetails(memberDto, oAuth2User.getAttributes());
	}
	
}
