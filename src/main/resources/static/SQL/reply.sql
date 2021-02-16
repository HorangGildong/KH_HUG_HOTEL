/*─────────────────────────────────────────────── 댓글 ───────────────────────────────────────────────*/
drop table REPLY;
drop sequence seq_reply_rNo;



/*------------------------------- REPLY 테이블 생성 -------------------------------*/
CREATE table REPLY(
    rNo     NUMBER         NOT NULL,
    nNo     NUMBER         NOT NULL,
    writer  VARCHAR2(15)   DEFAULT '관리자',----------------------수정
    content VARCHAR2(2000) NOT NULL,
    regdate DATE           DEFAULT SYSDATE,
    constraint fk_reply_nNo FOREIGN KEY(nNo) REFERENCES NOTICE(nNo)
);

/*------------------------------- 시퀀스 생성 -------------------------------*/
CREATE SEQUENCE seq_reply_rNo;

/*------------------------------- REPLY 데이터 등록 -------------------------------*/
INSERT INTO REPLY (rNo, nNo, content) VALUES (seq_reply_rNo.nextval, 10, '안녕하세요 반갑습니다.');
INSERT INTO REPLY (rNo, nNo, content) VALUES (seq_reply_rNo.nextval, 9, '안녕하세요 관리자님.');
INSERT INTO REPLY (rNo, nNo, content) VALUES (seq_reply_rNo.nextval, 8, '안녕하세요 승우님.');
INSERT INTO REPLY (rNo, nNo, content) VALUES (seq_reply_rNo.nextval, 7, '안녕하세요 유찬님.');
INSERT INTO REPLY (rNo, nNo, content) VALUES (seq_reply_rNo.nextval, 6, '안녕하세요 아현님.');
INSERT INTO REPLY (rNo, nNo, content) VALUES (seq_reply_rNo.nextval, 5, '안녕하세요 주영님.');
INSERT INTO REPLY (rNo, nNo, content) VALUES (seq_reply_rNo.nextval, 4, '안녕하세요 법규님.');
INSERT INTO REPLY (rNo, nNo, content) VALUES (seq_reply_rNo.nextval, 3, '안녕하세요 재훈님.');
INSERT INTO REPLY (rNo, nNo, content) VALUES (seq_reply_rNo.nextval, 2, '안녕하세요 하이하이.');
INSERT INTO REPLY (rNo, nNo, content) VALUES (seq_reply_rNo.nextval, 5, '안녕하세요 핼로우.');

commit;