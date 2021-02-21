//package kr.iei.hotel.member.config.auth;
//
//import java.util.Date;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
//import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
//import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
//import org.springframework.security.oauth2.core.user.OAuth2User;
//import org.springframework.stereotype.Service;
//
//import kr.iei.hotel.member.dao.MemberDao;
//import kr.iei.hotel.member.dto.MemberDto;
//
//@Service
//public class BACKUP_PrincipalOauth2UserService extends DefaultOAuth2UserService {
//
//	@Autowired
//	private BCryptPasswordEncoder bCryptPasswordEncoder;
//	
//	@Autowired
//	private MemberDao memberDao;
//	
//	// 구글로부터 받은 userRequest 데이터를 후처리
//	@Override
//	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
//		OAuth2User oAuth2User = super.loadUser(userRequest);
//		String provider = userRequest.getClientRegistration().getClientId();	// google
//		String providerId = oAuth2User.getAttribute("sub");						// 114558055230202652163
//		String username = provider + "_" + providerId;							// google_114558055230202652163
//		String email = oAuth2User.getAttribute("email");
//		
//		MemberDto memberDto = memberDao.findByEmail(email);
//		
////		if (memberDto == null) {
////			memberDto = new MemberDto(
////					Long memberId, String memberGrade, Date memberRegDate, Date memberUnRegDate,
////					Date memberPwChangeDate, String memberAgree, String memberRole, String memberEmail, String memberName,
////					String memberNick, String memberPhone, String memberGender, String memberPassword, Date memberBirth
////					); 
////		}
//		
//		return new PrincipalDetails(memberDto, oAuth2User.getAttributes());
//	}
//
//	
//	
//}
