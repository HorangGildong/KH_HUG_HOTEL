package kr.iei.hotel.memberManage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.iei.hotel.member.config.auth.PrincipalDetails;
import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.memberManage.service.MemberManageService;

@RestController
public class MemberManageController {

    @Autowired
    private MemberManageService memberManageService;

    @Autowired
	private BCryptPasswordEncoder passwordEncoder;
    
    @PostMapping("/user/update")
    public ResponseEntity<Boolean> userUpdate(MemberDto memberDto, @AuthenticationPrincipal PrincipalDetails userDetails) {
        if(!verify(memberDto, userDetails)) {
            return new ResponseEntity<>(false, HttpStatus.UNAUTHORIZED);
        } else {
            memberDto.setMemberEmail(userDetails.getUsername());
            int update = memberManageService.updateInfo(memberDto);
            if(update == 0) {
                return new ResponseEntity<>(false, HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }
        return new ResponseEntity<>(true, HttpStatus.OK);
    }

    @PostMapping("/user/delete")
    public ResponseEntity<Boolean> userDelete(MemberDto memberDto, @AuthenticationPrincipal PrincipalDetails userDetails) {
        if(!verify(memberDto, userDetails)) {
            return new ResponseEntity<>(false, HttpStatus.UNAUTHORIZED);
        } else {
            memberDto.setMemberEmail(userDetails.getUsername());
            int delete = memberManageService.deleteInfo(memberDto);
            if(delete == 0) {
                return new ResponseEntity<>(false, HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }
        return new ResponseEntity<>(true, HttpStatus.OK);
    }

    public Boolean verify(MemberDto memberDto, PrincipalDetails userDetails) {
        // 패스워드 검증 부분
        // 다중 사용으로 함수로 생성
        return passwordEncoder.matches(memberDto.getMemberPassword(), userDetails.getPassword());
    }


}
