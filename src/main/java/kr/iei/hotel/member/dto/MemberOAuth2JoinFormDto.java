package kr.iei.hotel.member.dto;

import java.sql.Date;
import java.text.ParseException;

public class MemberOAuth2JoinFormDto {

	private String memberId;
	private String memberAgree;
	private String memberEmail;
	private String memberName;
	private String memberNick;
	private String memberPhone;
	private String memberGender;
	private Date memberBirth;
	private String memberKey;
	
	public MemberOAuth2JoinFormDto() {}

	public MemberOAuth2JoinFormDto(String memberId, String memberEmail, String memberKey) {
		this.memberId = memberId;
		this.memberEmail = memberEmail;
		this.memberKey = memberKey;
	}

	public MemberOAuth2JoinFormDto(String memberAgree, String memberEmail, String memberName, String memberNick,
			String memberPhone, String memberGender, Date memberBirth, String memberKey) {
		super();
		this.memberAgree = memberAgree;
		this.memberEmail = memberEmail;
		this.memberName = memberName;
		this.memberNick = memberNick;
		this.memberPhone = memberPhone;
		this.memberGender = memberGender;
		this.memberBirth = memberBirth;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public void setMemberBirth(Date memberBirth) {
		this.memberBirth = memberBirth;
	}

	public final String getMemberAgree() {
		return memberAgree;
	}

	public final void setMemberAgree(String memberAgree) {
		this.memberAgree = memberAgree;
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

	public final Date getMemberBirth() {
		return memberBirth;
	}

	public void setMemberBirth(String memberBirth) throws ParseException {
//		this.memberBirth = new SimpleDateFormat("yyyy-MM-dd").parse(memberBirth);
		this.memberBirth = Date.valueOf(memberBirth);
	}

	public final String getMemberKey() {
		return memberKey;
	}

	public final void setMemberKey(String memberKey) {
		this.memberKey = memberKey;
	}

	@Override
	public String toString() {
		return "MemberOAuth2JoinFormDto [memberId=" + memberId + ", memberAgree=" + memberAgree + ", memberEmail="
				+ memberEmail + ", memberName=" + memberName + ", memberNick=" + memberNick + ", memberPhone="
				+ memberPhone + ", memberGender=" + memberGender + ", memberBirth=" + memberBirth + ", memberKey="
				+ memberKey + "]";
	}
	
}
