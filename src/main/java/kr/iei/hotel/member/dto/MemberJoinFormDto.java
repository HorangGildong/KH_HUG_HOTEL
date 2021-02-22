package kr.iei.hotel.member.dto;

import java.sql.Date;
import java.text.ParseException;

public class MemberJoinFormDto {

	private String memberId;
	private String memberAgree;
	private String memberEmail;
	private String memberName;
	private String memberNick;
	private String memberPhone;
	private String memberGender;
	private String memberPassword;
	private Date memberBirth;
	
	public MemberJoinFormDto() {}

	public MemberJoinFormDto(String memberId, String memberAgree, String memberEmail, String memberName,
			String memberNick, String memberPhone, String memberGender, String memberPassword, Date memberBirth) {
		this.memberId = memberId;
		this.memberAgree = memberAgree;
		this.memberEmail = memberEmail;
		this.memberName = memberName;
		this.memberNick = memberNick;
		this.memberPhone = memberPhone;
		this.memberGender = memberGender;
		this.memberPassword = memberPassword;
		this.memberBirth = memberBirth;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberAgree() {
		return memberAgree;
	}

	public void setMemberAgree(String memberAgree) {
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
//		this.memberBirth = new SimpleDateFormat("yyyy-MM-dd").parse(memberBirth);
		this.memberBirth = Date.valueOf(memberBirth);
	}

	@Override
	public String toString() {
		return "MemberJoinFormDto [memberId=" + memberId + ", memberAgree=" + memberAgree + ", memberEmail="
				+ memberEmail + ", memberName=" + memberName + ", memberNick=" + memberNick + ", memberPhone="
				+ memberPhone + ", memberGender=" + memberGender + ", memberPassword=" + memberPassword
				+ ", memberBirth=" + memberBirth + "]";
	}

}
