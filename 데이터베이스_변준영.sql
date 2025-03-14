-- customer데이터 삽입
INSERT INTO `Customer` VALUES('760121-1234567','정우성','서울','1976-01-21',NULL,'010-1101-7601','배우');
INSERT INTO `Customer` VALUES('750611-1234567','이정재','서울','1975-06-11',NULL,'010-1102-7506','배우');
INSERT INTO `Customer` VALUES('890530-1234567','전지현','대전','1989-05-30','jjh@naver.com','010-1103-8905','자영업');
INSERT INTO `Customer` VALUES('790413-1234567','이나영','대전','1979-04-13','lee@naver.com','010-2101-7904','회사원');
INSERT INTO `Customer` VALUES('660912-1234567','원빈','대전','1966-09-12','one@daum.net','010-2104-6609','배우');

-- account데이터 삽입
INSERT INTO `account` VALUES('1011-1001-1001','760121-1234567','자유입출금',4160000,'Y',NOW());
INSERT INTO `account` VALUES('1011-1001-1002','890530-1234567','자유입출금',376000,'Y',NOW());
INSERT INTO `account` VALUES('1011-1001-1003','790413-1234567','자유입출금',1200000,'Y',NOW());
INSERT INTO `account` VALUES('1011-2001-1004','660912-1234567','정기적금',1000000,'N',NOW());
INSERT INTO `account` VALUES('1011-1002-1005','750611-1234567','자유입출금',820000,'Y',NOW());

-- card데이터삽입
INSERT INTO `Card` VALUES('2111-1001-1001','760121-1234567','1011-1001-1001','2020-01-21',1000000,'2020-02-10','check');
INSERT INTO `Card` VALUES('2041-1001-1002','890530-1234567','1011-1001-1002','2020-06-11',3000000,'2020-06-15','check');
INSERT INTO `Card` VALUES('2011-1001-1003','790413-1234567','1011-1001-1003','2020-05-30',5000000,'2020-06-25','check');
INSERT INTO `Card` VALUES('2711-1001-1004','660912-1234567',null,'2020-04-13',1000000,'2020-05-10','credit');
INSERT INTO `Card` VALUES('2611-1001-1005','750611-1234567','1011-1002-1005','2020-09-12',1500000,'2020-10-10','check');

-- transaction데이터 삽입
INSERT INTO `transaction` VALUES(1,'1011-1001-1001','입금','2월 정기급여',3500000,NOW());
INSERT INTO `transaction` VALUES(2,'1011-1001-1003','출금','ATM 출금',300000,NOW());
INSERT INTO `transaction` VALUES(3,'1011-1001-1002','입금','2월 급여',2800000,NOW());
INSERT INTO `transaction` VALUES(4,'1011-1001-1002','출금','2월 공과금',116200,NOW());
INSERT INTO `transaction` VALUES(5,'1011-1002-1005','출금','ATM 출금',50000,NOW());

#고객 테이블 조회
SELECT * FROM `customer`;

#카드 테이블 조회
SELECT * FROM `card`;

#예금계좌 테이블 조회
SELECT * FROM `account`;

#예금계좌거래내역 테이블 조회
SELECT * FROM `transaction`;

#예금잔고가 4,000,000이상 고객에 대한 고객명, 주민번호, 전화번호, 주소를 조회
SELECT
	c.cust_name AS 고객명,
	c.cust_jumin AS 주민번호,
	c.cust_phnum AS 전화번호,
	c.cust_addr AS 주소
FROM
	account a
JOIN
	customer c ON a.cust_jumin=c.cust_jumin
WHERE
	a.acc_balance >=4000000;