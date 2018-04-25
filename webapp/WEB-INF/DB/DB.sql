//테이블
CREATE TABLE guest_tbl(
	no number PRIMARY KEY,
	name VARCHAR2(80) not null,
	password VARCHAR2(20) not null,
	content VARCHAR2(2000) not null,
	reg_date DATE 
);

//시퀀스
CREATE SEQUENCE seq_guest_no
INCREMENT BY 1
START WITH 1
NOCACHE;

SELECT * FROM guest_tbl;
DELETE FROM guest_tbl WHERE no LIKE 6;
DELETE FROM guest_tbl WHERE no LIKE 2 AND password LIKE 'ad';

SELECT * FROM member,board WHERE member.no = board.user_no;