DROP SEQUENCE MEMBER_SEQ;
DROP TRIGGER MEMBER_TRG;
DROP TABLE MEMBER;
DROP TABLE GRADE;

CREATE TABLE MEMBER (
	memberId	        NUMBER	                                CONSTRAINT PK_MEMBER_MEMBERID PRIMARY KEY,
	memberGrade         VARCHAR(20)     DEFAULT 'GRADE_GENERAL' NOT NULL,
	memberRegDate  	    DATE,
	memberUnRegDate     DATE,
	memberPwChangeDate  DATE,
    memberAgree	        VARCHAR(20),
	memberRole	        VARCHAR(20)		DEFAULT 'ROLE_REGURAL'  NOT NULL,
	memberEmail	        VARCHAR2(100),
	memberName	        VARCHAR2(100),
	memberNick          VARCHAR2(100),
	memberPhone         VARCHAR2(100),
	memberGender        VARCHAR2(20),
	memberPassword	    VARCHAR2(100),
	memberBirth         DATE,
    memberKey           VARCHAR2(100)
);

CREATE TABLE GRADE (
	memberGrade         VARCHAR(20)     DEFAULT 'ROLE_REGURAL'  CONSTRAINT PK_GRADE_MEMBERGRADE PRIMARY KEY,
	discountRate        NUMBER          DEFAULT 0	            NOT NULL
);

ALTER TABLE MEMBER
ADD CONSTRAINT FK_MEMBER_MEMBERGRADE FOREIGN KEY (memberGrade)
REFERENCES GRADE(memberGrade) ON DELETE CASCADE;

CREATE SEQUENCE MEMBER_SEQ;

CREATE OR REPLACE TRIGGER MEMBER_TRG
BEFORE INSERT ON MEMBER
FOR EACH ROW 
BEGIN
    BEGIN
        IF INSERTING AND :NEW.memberId IS NULL THEN
            SELECT MEMBER_SEQ.NEXTVAL INTO :NEW.memberId FROM SYS.DUAL;
        END IF;
    END COLUMN_SEQUENCES;
END;

/

INSERT INTO GRADE (memberGrade, discountRate) VALUES('GRADE_GENERAL',   0);
INSERT INTO GRADE (memberGrade, discountRate) VALUES('GRADE_MEMBERSHIP',0.3);

COMMIT;


INSERT INTO MEMBER (memberEmail, memberName, memberRegDate, memberPwChangeDate, memberNick, memberPhone, memberRole, memberGender, memberPassword, memberBirth)
VALUES(
    'gildong@hwalbin.com',
    '홍길동',
    SYSDATE,
    SYSDATE,
    '홍길동서남북북서로진로를돌려라',
    '010-1234-5678',
    'ROLE_REGURAL',
    'MALE',
    '$2a$10$kEbtQaS.O/gPhgeVF/Ci2efNDSKJmp03MfTiuGDrr4ONSHZ9jWOke', -- '123'으로 로그인하면 됨
    SYSDATE
--    'Sat Feb 20 00:00:00 KST 2021'
--    TO_DATE('1986-01-01','YYYY-MM-DD')
);

INSERT INTO MEMBER (memberEmail, memberName, memberRegDate, memberPwChangeDate, memberNick, memberPhone, memberRole, memberGender, memberPassword, memberBirth)
VALUES(
    'tiger@hug.com',
    '한만월',
    SYSDATE,
    SYSDATE,
    '관리자',
    '010-7777-7777',
    'ROLE_ADMIN',
    'FEMALE',
    '$2a$10$/UAjqxED7Eiy8hLJ0UAIdOpKmVp0jCBc.dfazAY2EPKax3lHIkWMW', -- '777'로 로그인하면 됨
    TO_DATE('1998-01-01','YYYY-MM-DD')
);

COMMIT;

SELECT * FROM GRADE;
SELECT * FROM MEMBER;

--EXAMPLE : JOIN(TEST)
SELECT M.memberId ID, M.memberEmail EMAIL, M.memberName NAME, memberRole ROLE, M.memberGrade GRADE, G.discountRate DC
FROM MEMBER M
LEFT JOIN GRADE G ON M.memberGrade = G.memberGrade;

UPDATE MEMBER SET 
memberName = '홍홍홍', memberEmail = '이메일'
WHERE memberId = 1;

SELECT memberName, memberEmail, memberRole, memberKey FROM MEMBER;
------------------