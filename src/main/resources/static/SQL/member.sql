DROP SEQUENCE MEMBER_SEQ;
DROP TRIGGER MEMBER_TRG;
DROP TABLE MEMBER;
DROP TABLE GRADE;

CREATE TABLE MEMBER (
	memberId	    NUMBER	                            CONSTRAINT PK_MEMBER_ID PRIMARY KEY,
	memberGrade     NUMBER(1)       DEFAULT 0           NOT NULL,
	memberReg   	DATE		    DEFAULT SYSDATE     NOT NULL,
	memberUnReg	    DATE,
	memberPwChange 	DATE	        DEFAULT SYSDATE     NOT NULL,
    memberAgree	    NUMBER(1)       DEFAULT 0           NOT NULL,
	memberRole	    NUMBER(1)		DEFAULT 0           NOT NULL,
	memberEmail	    VARCHAR2(100),
	memberName	    VARCHAR2(100),
	memberNick  	VARCHAR2(100),
	memberPhone     VARCHAR2(100),
	memberGender    NUMBER(1),
	memberPassword	VARCHAR2(100),
	memberBirth 	DATE
);

CREATE TABLE GRADE (
	memberGrade     NUMBER(1)       DEFAULT 0           CONSTRAINT PK_GRADE_NAME PRIMARY KEY,
	discountRate    NUMBER          DEFAULT 0	        NOT NULL
);

ALTER TABLE MEMBER
ADD CONSTRAINT FK_MEMBER FOREIGN KEY (memberGrade) 
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

COMMIT;


INSERT INTO GRADE (memberGrade, discountRate) VALUES(0,0);
INSERT INTO GRADE (memberGrade, discountRate) VALUES(1,30);


INSERT INTO MEMBER (memberEmail, memberName, memberNick, memberPhone, memberGender, memberPassword, memberBirth)
VALUES(
    'gildong@hwalbin.com',
    '홍길동',
    '홍길동서남북북서로진로를돌려라',
    '010-1234-5678',
    0,
    '123',
    TO_DATE('1986-01-01','YYYY-MM-DD')
);

INSERT INTO MEMBER (memberEmail, memberName, memberNick, memberPhone, memberRole, memberGender, memberPassword, memberBirth)
VALUES(
    'tiger@hughotel.com',
    '한만월',
    '관리자',
    '010-7777-7777',
    1,
    0,
    '777',
    TO_DATE('1998-01-01','YYYY-MM-DD')
);

COMMIT;

SELECT * FROM GRADE;
SELECT * FROM MEMBER;

--EXAMPLE : JOIN
SELECT M.memberId ID, M.memberEmail EMAIL, M.memberName NAME, memberRole ROLE, M.gradeName GRADE, G.gradeDiscount DC
FROM MEMBER M
LEFT JOIN GRADE G ON M.gradeName = G.gradeName;