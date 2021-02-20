package kr.iei.hotel.member.dto;

import java.util.Date;

import lombok.Data;

public class MemberDto {

	private Long memberId;
	private String memberGrade;
	private Date memberRegDate;
	private Date memberUnRegDate;
	private Date memberPwChangeDate;
	private String memberAgree;
	private String memberRole;
	private String memberEmail;
	private String memberName;
	private String memberNick;
	private String memberPhone;
	private String memberGender;
	private String memberPassword;
	private Date memberBirth;
	
	public MemberDto() {}

	public MemberDto(Long memberId, String memberGrade, Date memberRegDate, Date memberUnRegDate,
			Date memberPwChangeDate, String memberAgree, String memberRole, String memberEmail, String memberName,
			String memberNick, String memberPhone, String memberGender, String memberPassword, Date memberBirth) {
		this.memberId = memberId;
		this.memberGrade = memberGrade;
		this.memberRegDate = memberRegDate;
		this.memberUnRegDate = memberUnRegDate;
		this.memberPwChangeDate = memberPwChangeDate;
		this.memberAgree = memberAgree;
		this.memberRole = memberRole;
		this.memberEmail = memberEmail;
		this.memberName = memberName;
		this.memberNick = memberNick;
		this.memberPhone = memberPhone;
		this.memberGender = memberGender;
		this.memberPassword = memberPassword;
		this.memberBirth = memberBirth;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public String getMemberGrade() {
		return memberGrade;
	}

	public void setMemberGrade(String memberGrade) {
		this.memberGrade = memberGrade;
	}

	public Date getMemberRegDate() {
		return memberRegDate;
	}

	public void setMemberRegDate(Date memberRegDate) {
		this.memberRegDate = memberRegDate;
	}

	public Date getMemberUnRegDate() {
		return memberUnRegDate;
	}

	public void setMemberUnRegDate(Date memberUnRegDate) {
		this.memberUnRegDate = memberUnRegDate;
	}

	public Date getMemberPwChangeDate() {
		return memberPwChangeDate;
	}

	public void setMemberPwChangeDate(Date memberPwChangeDate) {
		this.memberPwChangeDate = memberPwChangeDate;
	}

	public String getMemberAgree() {
		return memberAgree;
	}

	public void setMemberAgree(String memberAgree) {
		this.memberAgree = memberAgree;
	}

	public String getMemberRole() {
		return memberRole;
	}

	public void setMemberRole(String memberRole) {
		this.memberRole = memberRole;
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

	public String getMemberGender() {
		return memberGender;
	}

	public void setMemberGender(String memberGender) {
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
		return "MemberDto [memberId=" + memberId + ", memberGrade=" + memberGrade + ", memberRegDate=" + memberRegDate
				+ ", memberUnRegDate=" + memberUnRegDate + ", memberPwChangeDate=" + memberPwChangeDate
				+ ", memberAgree=" + memberAgree + ", memberRole=" + memberRole + ", memberEmail=" + memberEmail
				+ ", memberName=" + memberName + ", memberNick=" + memberNick + ", memberPhone=" + memberPhone
				+ ", memberGender=" + memberGender + ", memberPassword=" + memberPassword + ", memberBirth="
				+ memberBirth + "]";
	}

}
