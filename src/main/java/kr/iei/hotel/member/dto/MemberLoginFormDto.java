package kr.iei.hotel.member.dto;

public class MemberLoginFormDto {
	
	private String memberEmail;
	private String memberPassword;
	
	public MemberLoginFormDto() {}

	public MemberLoginFormDto(String memberEmail, String memberPassword) {
		this.memberEmail = memberEmail;
		this.memberPassword = memberPassword;
	}
	
	public String getMemberEmail() {
		return memberEmail;
	}
	
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	
	public String getMemberPassword() {
		return memberPassword;
	}
	
	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}

	@Override
	public String toString() {
		return "MemberLoginFormDto [memberEmail=" + memberEmail + ", memberPassword=" + memberPassword + "]";
	}

}
