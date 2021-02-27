DROP SEQUENCE MEMBER_SEQ;
DROP TRIGGER MEMBER_TRG;
DROP TABLE MEMBER;
DROP TABLE GRADE;

CREATE TABLE MEMBER (
	memberNumber        NUMBER	                                            CONSTRAINT PK_MEMBER_MEMBERNUMBER PRIMARY KEY,
    memberId            VARCHAR(100)                            NOT NULL    CONSTRAINT UQ_MEMBER_MEMBERID UNIQUE,   
	memberGrade         VARCHAR(20)     DEFAULT 'GRADE_GENERAL',
	memberRegDate  	    DATE,
	memberUnRegDate     DATE,
	memberPwChangeDate  DATE,
    memberAgree	        VARCHAR(20),
	memberRole	        VARCHAR(20)		DEFAULT 'ROLE_REGURAL',
	memberEmail	        VARCHAR2(100),
	memberName	        VARCHAR2(100),
	memberNick          VARCHAR2(100)                                       CONSTRAINT UQ_MEMBER_MEMBERNICK UNIQUE,
	memberPhone         VARCHAR2(100),
	memberGender        VARCHAR2(20),
	memberPassword	    VARCHAR2(100),
	memberBirth         DATE,
    memberKey           VARCHAR2(100)
);

CREATE TABLE GRADE (
	memberGrade         VARCHAR(20)     DEFAULT 'ROLE_REGURAL'              CONSTRAINT PK_GRADE_MEMBERGRADE PRIMARY KEY,
	discountRate        NUMBER          DEFAULT 0
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
        IF INSERTING AND :NEW.memberNumber IS NULL THEN
            SELECT MEMBER_SEQ.NEXTVAL INTO :NEW.memberNumber FROM SYS.DUAL;
        END IF;
        IF INSERTING AND :NEW.memberGrade IS NULL THEN
            SELECT ('GRADE_GENERAL') INTO :NEW.memberRole FROM SYS.DUAL;
        END IF;
        IF INSERTING AND :NEW.memberRegDate IS NULL THEN
            SELECT SYSDATE INTO :NEW.memberRegDate FROM SYS.DUAL;
        END IF;
        IF INSERTING AND :NEW.memberPwChangeDate IS NULL THEN
            SELECT SYSDATE INTO :NEW.memberPwChangeDate FROM SYS.DUAL;
        END IF;
        IF INSERTING AND :NEW.memberRole IS NULL THEN
            SELECT ('ROLE_REGURAL') INTO :NEW.memberRole FROM SYS.DUAL;
        END IF;

    END COLUMN_SEQUENCES;
END;

/

INSERT INTO GRADE (memberGrade, discountRate) VALUES('GRADE_GENERAL',   0);
INSERT INTO GRADE (memberGrade, discountRate) VALUES('GRADE_MEMBERSHIP',0.3);

COMMIT;


---------- SAMPLE ----------


INSERT INTO MEMBER (
    memberId,           memberRegDate,      memberPwChangeDate,
    memberName,         memberNick,         memberBirth,
    memberPhone,        memberGender,       memberEmail,
    memberRole,         memberPassword
)
VALUES (
    'gildong',          SYSDATE,            SYSDATE,
    '홍길동',            '길동미디어',          TO_DATE('1986-01-01','YYYY-MM-DD'),
    '010-1234-5678',    'MALE',             'gildong@hwalbin.com',
    'ROLE_REGURAL',     '$2a$10$kEbtQaS.O/gPhgeVF/Ci2efNDSKJmp03MfTiuGDrr4ONSHZ9jWOke' -- 'password : 123'
);

INSERT INTO MEMBER (
    memberId,           memberRegDate,      memberPwChangeDate,
    memberName,         memberNick,         memberBirth,
    memberPhone,        memberGender,       memberEmail,
    memberRole,         memberPassword
)
VALUES (
    'tiger',            SYSDATE,            TO_DATE('2020-08-20','YYYY-MM-DD'),
    '한만월',            '관리자',             TO_DATE('1998-01-01','YYYY-MM-DD'),
    '010-7777-7777',    'FEMALE',           'tiger@hug.com',
    'ROLE_ADMIN',       '$2a$10$/UAjqxED7Eiy8hLJ0UAIdOpKmVp0jCBc.dfazAY2EPKax3lHIkWMW' -- 'password : 777'
);

INSERT INTO MEMBER (
    memberId,           memberRegDate,      memberPwChangeDate,
    memberName,         memberNick,         memberBirth,
    memberPhone,        memberGender,       memberEmail,
    memberRole,         memberPassword
)
VALUES (
    'olduser',          SYSDATE,            TO_DATE('2020-08-20','YYYY-MM-DD'),
    '아무개',            '늙은이',             TO_DATE('1995-01-01','YYYY-MM-DD'),
    '010-1111-1111',    'MALE',             'old@what.co.kr',
    'ROLE_REGURAL',     '$2a$10$/UAjqxED7Eiy8hLJ0UAIdOpKmVp0jCBc.dfazAY2EPKax3lHIkWMW' -- 'password : 777'
);

INSERT INTO MEMBER (
    memberId,           memberRegDate,      memberPwChangeDate,
    memberName,         memberNick,         memberBirth,
    memberPhone,        memberGender,       memberEmail,
    memberRole,         memberPassword
)
VALUES (
    'whoami',           SYSDATE,            SYSDATE,
    '아무개',            '난누군가또여긴어딘가',  TO_DATE('1995-01-01','YYYY-MM-DD'),
    '010-1111-1111',    'MALE',             'old@what.co.kr',
    'ROLE_REGURAL',     '$2a$10$/UAjqxED7Eiy8hLJ0UAIdOpKmVp0jCBc.dfazAY2EPKax3lHIkWMW' -- 'password : 777'
);

COMMIT;


---------- EXAMPLE : TEST ----------


SELECT * FROM GRADE;
SELECT * FROM MEMBER;

SELECT M.memberNumber NO, M.memberId ID, M.memberName NAME, M.memberNick Nick, M.memberEmail EMAIL, memberRole ROLE, M.memberGrade GRADE, G.discountRate DC
FROM MEMBER M
LEFT JOIN GRADE G ON M.memberGrade = G.memberGrade;

UPDATE MEMBER SET 
memberName = '홍홍홍', memberEmail = '이메일'
WHERE memberNumber = 1;

DELETE FROM MEMBER;

SELECT memberPwChangeDate, memberNumber, memberId, memberName, memberNick, memberPassword, memberPhone, memberEmail, memberRole, memberKey FROM MEMBER;
SELECT memberId FROM MEMBER WHERE memberName = '한만월' AND memberPhone = '777-7777-7777;
SELECT * FROM MEMBER;

UPDATE MEMBER SET 
    memberPwChangeDate = ADD_MONTHS(SYSDATE, -2)
WHERE memberNumber = 33;
/
UPDATE MEMBER SET 
    memberPwChangeDate = TO_DATE('2020-08-20','YYYY-MM-DD')
WHERE memberNumber = 46;
/
UPDATE MEMBER SET 
    memberPassword = '$2a$10$kEbtQaS.O/gPhgeVF/Ci2efNDSKJmp03MfTiuGDrr4ONSHZ9jWOke'
WHERE memberNumber = 9;
COMMIT;

