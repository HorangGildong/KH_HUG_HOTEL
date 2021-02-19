package kr.iei.hotel.member.dto;

public class AuthInfoDto {
	
	private Long memberId;
	private String memberNick;
	private String memberGrade;
	private String memberRole;
	
	public AuthInfoDto() {}

	public AuthInfoDto(Long memberId, String memberNick, String memberGrade, String memberRole) {
		this.memberId = memberId;
		this.memberNick = memberNick;
		this.memberGrade = memberGrade;
		this.memberRole = memberRole;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public String getMemberNick() {
		return memberNick;
	}

	public void setMemberNick(String memberNick) {
		this.memberNick = memberNick;
	}

	public String getMemberGrade() {
		return memberGrade;
	}

	public void setMemberGrade(String memberGrade) {
		this.memberGrade = memberGrade;
	}

	public String getMemberRole() {
		return memberRole;
	}

	public void setMemberRole(String memberRole) {
		this.memberRole = memberRole;
	}

	@Override
	public String toString() {
		return "AuthInfoDto [memberId=" + memberId + ", memberNick=" + memberNick + ", memberGrade=" + memberGrade
				+ ", memberRole=" + memberRole + "]";
	}
	
}
