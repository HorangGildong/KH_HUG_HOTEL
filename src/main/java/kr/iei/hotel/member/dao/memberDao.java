package kr.iei.hotel.member.dao;

import java.util.Date;

public class memberDao {

	private Long memberId;
	private String gradeName;
	private Date memberReg;
	private Date memberUnReg;
	private Date memberPwChange;
	private int memberAgree;
	private int memberRole;
	private String memberEmail;
	private String memberName;
	private String memberNick;
	private String memberPhone;
	private int memberGender;
	private String memberPassword;
	private Date memberBirth;
	
	public memberDao() {
		
	}
	
	public memberDao(Long memberId, String gradeName, Date memberReg, Date memberUnReg, Date memberPwChange,
			int memberAgree, int memberRole, String memberEmail, String memberName, String memberNick,
			String memberPhone, int memberGender, String memberPassword, Date memberBirth) {
		super();
		this.memberId = memberId;
		this.gradeName = gradeName;
		this.memberReg = memberReg;
		this.memberUnReg = memberUnReg;
		this.memberPwChange = memberPwChange;
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

	public String getGradeName() {
		return gradeName;
	}

	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
	}

	public Date getMemberReg() {
		return memberReg;
	}

	public void setMemberReg(Date memberReg) {
		this.memberReg = memberReg;
	}

	public Date getMemberUnReg() {
		return memberUnReg;
	}

	public void setMemberUnReg(Date memberUnReg) {
		this.memberUnReg = memberUnReg;
	}

	public Date getMemberPwChange() {
		return memberPwChange;
	}

	public void setMemberPwChange(Date memberPwChange) {
		this.memberPwChange = memberPwChange;
	}

	public int getMemberAgree() {
		return memberAgree;
	}

	public void setMemberAgree(int memberAgree) {
		this.memberAgree = memberAgree;
	}

	public int getMemberRole() {
		return memberRole;
	}

	public void setMemberRole(int memberRole) {
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
		return "memberDao [memberId=" + memberId + ", gradeName=" + gradeName + ", memberReg=" + memberReg
				+ ", memberUnReg=" + memberUnReg + ", memberPwChange=" + memberPwChange + ", memberAgree=" + memberAgree
				+ ", memberRole=" + memberRole + ", memberEmail=" + memberEmail + ", memberName=" + memberName
				+ ", memberNick=" + memberNick + ", memberPhone=" + memberPhone + ", memberGender=" + memberGender
				+ ", memberPassword=" + memberPassword + ", memberBirth=" + memberBirth + "]";
	}
	
}
