# 날짜: 2025/01/06
# 이름: 변준영
# 내용: 1장 데이터베이스 설치와 생성

#실습 1-1
CREATE DATABASE `studydb`;
DROP DATABASE `StudyDB`;

#실습 1-2
CREATE USER 'wnsdud060451'@'%' identified by '1234';
GRANT ALL privileges on StudyDB.* to 'wnsdud060451'@'%';
flush privileges;

#실습 1-3
alter user 'wnsdud060451'@'%' identified by 'abc1234';
drop user 'wnsdud060451'@'%';
flush privileges;
