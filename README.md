# trip2jeju
## 추가할 기능   
- 회원정보 찾기
- 리뷰, 댓글 **수정/삭제** 기능
- 여행지 검색 기능
- DB 생성할 때 회원 정보 속성에 성별, 나이 수집 (면접볼 때 왜 수집했냐고 물어보면 해당 데이터를 이용해서 성별, 연령에 따른 여행지 선호도 데이터를 조사해 볼 예정입니다.)
- 상단 지도에 여행지를 핀으로 연결
- 명소별 정리  
- 모바일 사이즈

## MariaDB 세팅 및 테이블 생성
/ bin 폴더로 이동 (마리아DB 압출파일 푼 폴더의 BIN폴더까지)   
cd D:\mariadb-10.1.48-winx64\bin 

/ mysql 설치   
mysql_install_db --datadir=C:mariaDB --service=mariaDB --port=3306 --password=0000

/ mysql 접속   
mysql (-hlocalhost) -uroot -p

/ 데이터베이스 확인   
show databases

/ 사용자 생성   
create database t2j default character set utf8;

/ 사용자 접속   
use t2j

/ 사용자 권한 부여   
GRANT ALL PRIVILEGES ON t2j.* to t2j_user@localhost IDENTIFIED BY 't2j';

exit;

/ 데이터베이스 확인   
show databases

/ error 2003   
윈도우 검색에 서비스 검색, mysql 찾아서 서비스 시작 클릭


DROP TABLE IF EXISTS review;

CREATE TABLE review (
	qna_no	INT(12)	NOT NULL AUTO_INCREMENT PRIMARY KEY,
	qna_title	VARCHAR(100)	NOT NULL,
	qna_content	TEXT	NULL,
	qna_date	DATETIME	NOT NULL,
	qna_views	INT(12)	NOT NULL	DEFAULT 0,
	member_no	INT(12)	NOT NULL
);

DROP TABLE IF EXISTS MEMBER;

CREATE TABLE MEMBER (
	member_no	INT(12)  NOT NULL AUTO_INCREMENT PRIMARY KEY,
	member_id	VARCHAR(50)	NOT NULL,
	member_pw	VARCHAR(50)	NOT NULL,
	member_name	VARCHAR(50)	NOT NULL,
	member_tel	VARCHAR(15)	NOT NULL,
	member_gender	CHAR(1)	NOT NULL CHECK(member_gender IN ('M', 'F', 'E')),
	memver_age	INT(3)	NOT NULL
);

DROP TABLE IF EXISTS REPLY;

CREATE TABLE REPLY (
	reply_no	INT(12) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	reply_parent_no	INT(12)	NOT NULL	DEFAULT 0,
	reply_content	TEXT	NULL,
	reply_date	DATETIME	NOT NULL,
	qna_no	INT(12)	NOT NULL,
	member_no	INT(12)	NOT NULL
);

ALTER TABLE review ADD CONSTRAINT FK_MEMBER_TO_review_1 FOREIGN KEY (
	member_no
)
REFERENCES MEMBER (
	member_no
);

ALTER TABLE REPLY ADD CONSTRAINT FK_review_TO_REPLY_1 FOREIGN KEY (
	qna_no
)
REFERENCES review (
	qna_no
);

ALTER TABLE REPLY ADD CONSTRAINT FK_MEMBER_TO_REPLY_1 FOREIGN KEY (
	member_no
)
REFERENCES MEMBER (
	member_no
);

## member 테이블 쿼리문
// 테스트용 데이터
insert into member values (null, "member1", "0000", "Kim", "01012345678", "1", 24, 1 );
insert into member values (null, "member2", "0000", "Park", "01012345678", "2", 25, 1 );
insert into member values (null, "member3", "0000", "Choi", "01012345678", "1", 26, 1 );
insert into member values (null, "member4", "0000", "Jang", "01012345678", "2", 27, 1 );

// 조회
SELECT member_no, member_id, member_pw, member_name, name, member_tel, member_gender, member_age, member_validated
FROM member

// 수정
UPDATE member
SET member_pw=#{member_pw}, member_tel=#{member_tel}
	WHERE member_no=#{member_no}

// 삭제
DELETE FROM member
	WHERE member_no = #{member_no}

// 가입
INSERT INTO member
VALUES (
	null
	, #{member_id}
	, #{member_pw}
	, #{member_name}
	, #{member_tel}
	, #{member_gender}
	, #{member_age}
	, #{member_validated}
)

## JavaScript Sliding Paging
참고 자료: https://jongdai.tistory.com/m/75

## 정규 표현식
비밀번호 정규식
^[a-zA-Z\\d`~!@#$%^&*()-_=+]{8,24}$
1. 8자리 이상 24자리 이하
2. 숫자
3. 영어 대소문자, 특수문자 필수



아이디 정규식
^[a-z\\d]{6,16}$
1. 6자리 이상 16자리 이하
2. 숫자
3. 영어소문자


전화번호 정규식
/^\d{3} - \d{3,4} - \d{4}$/
1. 숫자만
2. 첫번째 칸에는 3개숫자만, 두번째 칸에는 3~4개, 세번째칸에는 4개