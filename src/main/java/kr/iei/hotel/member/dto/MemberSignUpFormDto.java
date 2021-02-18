package kr.iei.hotel.member.dto;

import java.text.ParseException;
import java.util.Date;

public class MemberSignUpFormDto {

	private int memberAgree;
	private String memberEmail;
	private String memberName;
	private String memberNick;
	private String memberPhone;
	private int memberGender;
	private String memberPassword;
	private Date memberBirth;
	
	public MemberSignUpFormDto() {}
	
	public MemberSignUpFormDto(int memberAgree, String memberEmail, String memberName, String memberNick,
			String memberPhone, int memberGender, String memberPassword, Date memberBirth) {
		this.memberAgree = memberAgree;
		this.memberEmail = memberEmail;
		this.memberName = memberName;
		this.memberNick = memberNick;
		this.memberPhone = memberPhone;
		this.memberGender = memberGender;
		this.memberPassword = memberPassword;
		this.memberBirth = memberBirth;
	}
	
	public int getMemberAgree() {
		return memberAgree;
	}
	
	public void setMemberAgree(int memberAgree) {
		this.memberAgree = memberAgree;
	}
	
	public String getMemberEmail() {
		return memberEmail;
	}
	
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	
	public String getMemberName() {
		return memberName;
	}
	
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	
	public String getMemberNick() {
		return memberNick;
	}
	
	public void setMemberNick(String memberNick) {
		this.memberNick = memberNick;
	}
	
	public String getMemberPhone() {
		return memberPhone;
	}
	
	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}
	
	public int getMemberGender() {
		return memberGender;
	}
	
	public void setMemberGender(int memberGender) {
		this.memberGender = memberGender;
	}
	
	public String getMemberPassword() {
		return memberPassword;
	}
	
	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}
	
	public Date getMemberBirth() {
		return memberBirth;
	}
	
	public void setMemberBirth(String memberBirth) {
		try {
			this.memberBirth = new java.text.SimpleDateFormat("yyyy-MM-dd").parse(memberBirth);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}

	@Override
	public String toString() {
		return "MemberSignUpFormDto [memberAgree=" + memberAgree + ", memberEmail=" + memberEmail + ", memberName="
				+ memberName + ", memberNick=" + memberNick + ", memberPhone=" + memberPhone + ", memberGender="
				+ memberGender + ", memberPassword=" + memberPassword + ", memberBirth=" + memberBirth + "]";
	}
	
}
