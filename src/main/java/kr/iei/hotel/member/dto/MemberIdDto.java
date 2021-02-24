package kr.iei.hotel.member.dto;

import java.sql.Date;

public class MemberIdDto {

	private String memberId;
	private Date memberRegDate;
	
	public MemberIdDto() {}

	public MemberIdDto(String memberId, Date memberRegDate) {
		super();
		this.memberId = memberId;
		this.memberRegDate = memberRegDate;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public Date getMemberRegDate() {
		return memberRegDate;
	}

	public void setMemberRegDate(Date memberRegDate) {
		this.memberRegDate = memberRegDate;
	}

	@Override
	public String toString() {
		return "MemberIdDto [memberId=" + memberId + ", memberRegDate=" + memberRegDate + "]";
	}
	
}
