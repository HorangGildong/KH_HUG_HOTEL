package kr.iei.hotel.member.dto;

import java.sql.Date;
import java.text.ParseException;

public class MemberDto {

	protected Long memberNumber;
	protected String memberId;
	protected String memberGrade;
	protected Date memberRegDate;
	protected Date memberUnRegDate;
	protected Date memberPwChangeDate;
	protected String memberAgree;
	protected String memberRole;
	protected String memberEmail;
	protected String memberName;
	protected String memberNick;
	protected String memberPhone;
	protected String memberGender;
	protected String memberPassword;
	protected Date memberBirth;
	protected String memberKey;
	
	public MemberDto() {}
	
	public MemberDto(	String memberId,			String memberRole,		String memberEmail,		String memberKey) {
		this.memberId = memberId;
		this.memberRole = memberRole;
		this.memberEmail = memberEmail;
		this.memberKey = memberKey;
	}

	public MemberDto(	Long memberNumber,			String memberId,		String memberGrade,		Date memberRegDate,
						Date memberUnRegDate,		Date memberPwChangeDate,String memberAgree,		String memberRole,
						String memberEmail,			String memberName,		String memberNick,		String memberPhone,
						String memberGender,		String memberPassword,	Date memberBirth,		String memberKey) {
		this.memberNumber = memberNumber;
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

	public Long getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(Long memberNumber) {
		this.memberNumber = memberNumber;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
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

	public void setMemberBirth(String memberBirth) throws ParseException {
//		this.memberBirth = new SimpleDateFormat("yyyy-MM-dd").parse(memberBirth);	// import java.util.Date;
		this.memberBirth = Date.valueOf(memberBirth);
	}
	
	public void setMemberBirth(Date memberBirth) {
		this.memberBirth = memberBirth;
	}

	public String getMemberKey() {
		return memberKey;
	}

	public void setMemberKey(String memberKey) {
		this.memberKey = memberKey;
	}

	@Override
	public String toString() {
		return "MemberDto [memberNumber=" + memberNumber + ", memberId=" + memberId + ", memberGrade=" + memberGrade
				+ ", memberRegDate=" + memberRegDate + ", memberUnRegDate=" + memberUnRegDate + ", memberPwChangeDate="
				+ memberPwChangeDate + ", memberAgree=" + memberAgree + ", memberRole=" + memberRole + ", memberEmail="
				+ memberEmail + ", memberName=" + memberName + ", memberNick=" + memberNick + ", memberPhone="
				+ memberPhone + ", memberGender=" + memberGender + ", memberPassword=" + memberPassword
				+ ", memberBirth=" + memberBirth + ", memberKey=" + memberKey + "]";
	}

}
