package kr.iei.hotel.member.dto;

import java.sql.Date;

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
	private String memberKey;
	
	public MemberDto() {}

	public MemberDto(Long memberId, String memberGrade, Date memberRegDate, Date memberUnRegDate,
			Date memberPwChangeDate, String memberAgree, String memberRole, String memberEmail, String memberName,
			String memberNick, String memberPhone, String memberGender, String memberPassword, Date memberBirth,
			String memberKey) {
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
		this.memberKey = memberKey;
	}

	public final Long getMemberId() {
		return memberId;
	}

	public final void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public final String getMemberGrade() {
		return memberGrade;
	}

	public final void setMemberGrade(String memberGrade) {
		this.memberGrade = memberGrade;
	}

	public final Date getMemberRegDate() {
		return memberRegDate;
	}

	public final void setMemberRegDate(Date memberRegDate) {
		this.memberRegDate = memberRegDate;
	}

	public final Date getMemberUnRegDate() {
		return memberUnRegDate;
	}

	public final void setMemberUnRegDate(Date memberUnRegDate) {
		this.memberUnRegDate = memberUnRegDate;
	}

	public final Date getMemberPwChangeDate() {
		return memberPwChangeDate;
	}

	public final void setMemberPwChangeDate(Date memberPwChangeDate) {
		this.memberPwChangeDate = memberPwChangeDate;
	}

	public final String getMemberAgree() {
		return memberAgree;
	}

	public final void setMemberAgree(String memberAgree) {
		this.memberAgree = memberAgree;
	}

	public final String getMemberRole() {
		return memberRole;
	}

	public final void setMemberRole(String memberRole) {
		this.memberRole = memberRole;
	}

	public final String getMemberEmail() {
		return memberEmail;
	}

	public final void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public final String getMemberName() {
		return memberName;
	}

	public final void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public final String getMemberNick() {
		return memberNick;
	}

	public final void setMemberNick(String memberNick) {
		this.memberNick = memberNick;
	}

	public final String getMemberPhone() {
		return memberPhone;
	}

	public final void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}

	public final String getMemberGender() {
		return memberGender;
	}

	public final void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}

	public final String getMemberPassword() {
		return memberPassword;
	}

	public final void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}

	public final Date getMemberBirth() {
		return memberBirth;
	}

	public final void setMemberBirth(Date memberBirth) {
		this.memberBirth = memberBirth;
	}

	public final String getMemberKey() {
		return memberKey;
	}

	public final void setMemberKey(String memberKey) {
		this.memberKey = memberKey;
	}

	@Override
	public String toString() {
		return "MemberDto [memberId=" + memberId + ", memberGrade=" + memberGrade + ", memberRegDate=" + memberRegDate
				+ ", memberUnRegDate=" + memberUnRegDate + ", memberPwChangeDate=" + memberPwChangeDate
				+ ", memberAgree=" + memberAgree + ", memberRole=" + memberRole + ", memberEmail=" + memberEmail
				+ ", memberName=" + memberName + ", memberNick=" + memberNick + ", memberPhone=" + memberPhone
				+ ", memberGender=" + memberGender + ", memberPassword=" + memberPassword + ", memberBirth="
				+ memberBirth + ", memberKey=" + memberKey + "]";
	}

}