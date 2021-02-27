package kr.iei.hotel.member.dto;

public class MemberOAuth2JoinFormDto extends MemberJoinFormDto {

	public MemberOAuth2JoinFormDto() {}

	@Override
	public void setMemberId(String MemberId) {
	}
	
	@Override
	public void setMemberPassword(String MemberPassword) {
	}
	
	@Override
	public void setMemberKey(String memberKey) {
		super.memberKey = memberKey;
		super.memberId = "USER_" + super.memberKey;
	}

}
