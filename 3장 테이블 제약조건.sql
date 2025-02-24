#날짜: 2025/01/07
#이름: 변준영
#내용: 3장 테이블 제약조건

#실습 3-1
CREATE TABLE `user2` (
	`uid`	VARCHAR(10) primary key,
    `name`	VARCHAR(10),
    `birth`	CHAR(10),
    `addr`	VARCHAR(50)
    

);
#실습 3-2
insert INTO `user2` values ('A101','김유신','1999-02-03','김해');
insert into `user2` values ('A102','김춘추','1991-02-03','경주');
insert into `user2` values ('A103','장보고','1992-02-03','완도'); 

select *from `user2`;


#실습 3-3
CREATE TABLE `user3`(
	`uid`	VARCHAR(10)	PRIMARY KEY,
    `name`	VARCHAR(10),
    `birth`	CHAR(10),
    `hp`	CHAR(13)	UNIQUE,
    `addr`	VARCHAR(50)
);

insert into `user3` values ('A101','김유신','1990-01-01','010-1001-1003','김해');
insert into `user3` values ('A102','김춘추','1991-01-01','010-1001-1002','경주');
insert into `user3` values ('A103','장보고','1992-01-01','010-1001-1001','완도');
insert into `user3` values ('A104','강감찬','1993-01-01',NULL,'서울');
insert into `user3` values ('A105','이순신','1994-01-01',NULL,'부산');
select *from `user3`;

#실습 3-5

CREATE TABLE `Parent`(
	`pid`	VARCHAR(10) PRIMARY KEY,
    `name`	VARCHAR(10),
    `birth`	CHAR(10),
    `addr`	VARCHAR(100)

);


CREATE TABLE `Child`(
	`cid`	VARCHAR(10) PRIMARY KEY,
    `name`	VARCHAR(10),
    `hp`	CHAR(13) UNIQUE,
    `parent`	VARCHAR(10),
    FOREIGN KEY(`parent`) references `parent`(`pid`)
);  


insert into `parent` values ('p101','김유신','1968-05-09','경남 김해시');
insert into `parent` values ('p102','김춘추','1972-11-23','경남 경주시');
insert into `parent` values ('p103','장보고','1978-03-01','전남 완도시');
insert into `parent` values ('p104','강감찬','1979-08-16','서울시 관악구');
insert into `parent` values ('p105','이순신','1981-05-23','부산시 진구');
select *from `parent`;

insert into `child` values('c101','김철수','010-1234-1001','p101');
insert into `child` values('c102','김영희','010-1234-1002','p101');
insert into `child` values('c103','강철수','010-1234-1003','p103');
insert into `child` values('c104','이철수','010-1234-1004','p105');
# insert into `child` values('c105','정약용','010-1234-1005','p109');
select *from `child`;

#실습 3-7
CREATE TABLE `user4` (
	`uid`	VARCHAR(10) primary KEY,
    `name`	VARCHAR(10) not null,
    `gender`	CHAR(1),
    `age`	INT DEFAULT 1,
    `hp`	CHAR(13) unique,
    `addr`	VARCHAR(20)
);

insert into `user4` values ('A101','김유신','M',21,'010-1234-1001','김해');
insert into `user4` values ('A102','김춘추','M',20,'010-1234-1002','경주');
insert into `user4` values ('A103','장보고','M',31,'010-1234-1003','완도');
insert into `user4` set
						`uid`='A104',
                        `name`='신사임당',
                        `gender`='F',
                        `addr`='강릉';
select*from `user4`;

#실습 3-9
CREATE TABLE `user5` (
	`seq`	INT auto_increment primary key,
	`name` VARCHAR(10) not null,
    `gender` CHAR(1) check(`gender` IN ('M','F')),
    `age`	INT DEFAULT 1 CHECK(`age` > 0 AND `age` < 100),
    `addr`	VARCHAR(20)
);

#실습 3-10
insert into `user5` (`name`,`gender`,`age`,`addr`)values('김유신','M',25,'김해');
insert into `user5` (`name`,`gender`,`age`,`addr`)values('김춘추','M',24,'경주');
insert into `user5` (`name`,`gender`,`age`,`addr`)values('장보고','M',35,'완도');
insert into `user5` (`name`,`gender`,`age`,`addr`)values('허난설헌','F',21,'광주');
insert into `user5` (`name`,`gender`,`age`,`addr`)values('신사임당','F',25,'강릉');
select *from `user5`;