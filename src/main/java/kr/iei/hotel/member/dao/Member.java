package kr.iei.hotel.member.dao;

import java.util.Date;

import lombok.Data;

@Data
public class Member {

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

}
