package kr.iei.hotel.member.controller;

import java.util.Date;

public class MemberForm {

	private int memberAgree;
	private String memberEmail;
	private String memberName;
	private String memberNick;
	private String memberPhone;
	private int memberGender;
	private String memberPassword;
	private Date memberBirth;

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
	public void setMemberBirth(Date memberBirth) {
		this.memberBirth = memberBirth;
	}
	
	@Override
	public String toString() {
		return "MemberForm [memberAgree=" + memberAgree + ", memberEmail=" + memberEmail + ", memberName=" + memberName
				+ ", memberNick=" + memberNick + ", memberPhone=" + memberPhone + ", memberGender=" + memberGender
				+ ", memberPassword=" + memberPassword + ", memberBirth=" + memberBirth + "]";
	}
	
}
