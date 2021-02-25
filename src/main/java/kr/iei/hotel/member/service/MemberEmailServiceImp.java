package kr.iei.hotel.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import kr.iei.hotel.member.dto.MemberEmailDto;

@Service
public class MemberEmailServiceImp implements MemberEmailService {

	@Autowired
	private JavaMailSender javaMailSender;

	@Override
    public void sendEmail(MemberEmailDto memberEmailDto) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom(memberEmailDto.getSenderAddress());
        message.setTo(memberEmailDto.getRecipientAddress());
        message.setSubject(memberEmailDto.getTitle());
        message.setText(memberEmailDto.getMessage());
        javaMailSender.send(message);
    }
}
