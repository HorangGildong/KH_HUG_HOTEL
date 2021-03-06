package kr.iei.hotel.member.service;

import javax.servlet.http.HttpSession;

import kr.iei.hotel.member.dto.MemberDto;

public interface MemberService {
	
	MemberDto getSessionMemberDto();
		
	String passwordEncode(String memberPassword);
	
	MemberDto passwordEncode(MemberDto memberDto);
	
	String createCode();
	
	String createPassword();

	void setCodeSession(HttpSession codeSession);
	
	void sendCodeEmail(String memberEmail, HttpSession codeSession);
	
	void sendPasswordEmail(String memberEmail, String password);
	
	void autoLogin(MemberDto memberDto);
	
	boolean isMatchingPassword(String enteredPassword, String savedPassword);
	
}
