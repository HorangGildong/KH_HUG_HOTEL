package kr.iei.hotel.member.dto;

public class AuthInfoDto {
	
	private Long memberId;
	private String memberNick;
	private int memberGrade;
	private int memberRole;
	
	public AuthInfoDto() {}

	public AuthInfoDto(Long memberId, String memberNick, int memberGrade, int memberRole) {
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

	public int getMemberGrade() {
		return memberGrade;
	}

	public void setMemberGrade(int memberGrade) {
		this.memberGrade = memberGrade;
	}

	public int getMemberRole() {
		return memberRole;
	}

	public void setMemberRole(int memberRole) {
		this.memberRole = memberRole;
	}

	@Override
	public String toString() {
		return "AuthInfoDto [memberId=" + memberId + ", memberNick=" + memberNick + ", memberGrade=" + memberGrade
				+ ", memberRole=" + memberRole + "]";
	}
	
}
