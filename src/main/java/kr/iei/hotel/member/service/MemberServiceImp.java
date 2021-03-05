package kr.iei.hotel.member.service;

import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.iei.hotel.member.config.auth.PrincipalDetails;
import kr.iei.hotel.member.config.auth.PrincipalDetailsService;
import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.member.vo.MemberCodeEmailVo;
import kr.iei.hotel.member.vo.MemberPasswordEmailVo;

@Service
public class MemberServiceImp implements MemberService {

	@Autowired
	private JavaMailSender javaMailSender;

	@Value("${spring.mail.username}")
	private String senderAddress;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private PrincipalDetailsService principalDetailsService;
	
	@Autowired
	private MemberGetService memberGetService;
	
	@Override
	public String createCode() {
		String code = RandomStringUtils.random(6, 33, 125, false, true);
		return code;
	}
	
	@Override
	public String createPassword() {
		String password = RandomStringUtils.random(10, 33, 125, false, false);
		return password;
	}
	
	@Override
	public void setCodeSession(HttpSession codeSession) {
		codeSession.setMaxInactiveInterval(3*60);
		codeSession.setAttribute("code", createCode());
	}
	
	@Override
    public void sendCodeEmail(String memberEmail, HttpSession codeSession) {
		SimpleMailMessage memberCodeEmailVo = new MemberCodeEmailVo(memberEmail, (String) codeSession.getAttribute("code"));
		javaMailSender.send(memberCodeEmailVo);
    }
	
	@Override
	public void sendPasswordEmail(String memberEmail, String password) {
		SimpleMailMessage memberPasswordEmailVo = new MemberPasswordEmailVo(memberEmail, password);
		javaMailSender.send(memberPasswordEmailVo);
	}
	
	@Override
	public String passwordEncode(String memberPassword) {
		return passwordEncoder.encode(memberPassword);
	}
	
	@Override
	public MemberDto getSessionMemberDto() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		PrincipalDetails principalDetails = (PrincipalDetails) authentication.getPrincipal();
		return principalDetails.getMemberDto();
	}
	
	@Override
	public void autoLogin(MemberDto memberDto) {
		UserDetails userDetails = principalDetailsService.loadUserByUsername(memberDto.getMemberEmail());
		Collection<GrantedAuthority> authorities = getAuthorities(memberDto.getMemberRole());
		Authentication newAuthentication = new UsernamePasswordAuthenticationToken(userDetails, null, authorities);
		SecurityContextHolder.getContext().setAuthentication(newAuthentication);
	}
	
	@Override
	public void autoLogin(String memberEmail) {
		UserDetails userDetails = principalDetailsService.loadUserByUsername(memberEmail);
		String memberRole = memberGetService.getMemberDtoByEmail(memberEmail).getMemberRole();
		Collection<GrantedAuthority> authorities = getAuthorities(memberRole);
		Authentication newAuthentication = new UsernamePasswordAuthenticationToken(userDetails, null, authorities);
		SecurityContextHolder.getContext().setAuthentication(newAuthentication);
	}
	
	@Override
	public boolean isPasswordConfirm(String enteredPassword, String savedPassword) {
		return passwordEncoder.matches(enteredPassword, savedPassword);
	}
	
	public Collection<GrantedAuthority> getAuthorities(String... authorities) {
		Collection<GrantedAuthority> grantedAuthorities = new ArrayList<>();
		for(String authority : authorities)
			grantedAuthorities.add(() -> authority);
		return grantedAuthorities;
	}
	
}