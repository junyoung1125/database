#날짜: 2025/01/15
#이름: 변준영
#내용: SQL 연습문제3

#실습3-1
CREATE DATABASE `College`;
CREATE USER 'college'@'%' identified by '1234';
GRANT ALL PRIVILEGES ON College.* To 'college'@'%';
FLUSH PRIVILEGES;
#실습3-2
CREATE TABLE `Student` (
	`stdNo` CHAR(8) not null Primary key,
    `stdName`	VARCHAR(20) not null,	
    `stdHp`		CHAR(13) not null,
    `stdYear`	INT not null,
    `stdAddress`	VARCHAR(100) default null
);
CREATE TABLE `Lecture` (
	`lecNo`	INT not null primary key,
    `lecName`	VARCHAR(20) not null,
    `lecCredit` INT not null,
    `lecTime` INT not null,
    `lecClass`	VARCHAR(10) default null
);

CREATE TABLE `Register`(
	`regStdNo`	CHAR(8) not null,
    `regLecNo`	INT not null,
    `regMidScore` INT default null,
    `regFinalScore` INT default null,
    `regTotalScore` INT default null,
    `regGrade` CHAR(1) default null
);
#실습3-3
insert into `Student` values('20201016','김유신','010-1234-1001',3,null);
insert into `Student` values('20201126','김춘추','010-1234-1002',3,'경상남도 경주시');
insert into `Student` values('20210216','장보고','010-1234-1003',2,'전라남도 완도시');
insert into `Student` values('20210326','강감찬','010-1234-1004',2,'서울시 영등포구');
insert into `Student` values('20220416','이순신','010-1234-1005',1,'부산시 부산진구');
insert into `Student` values('20220521','송상현','010-1234-1006',1,'부산시 동래구');

insert into `Lecture` values(159,'인지행동심리학',3,40,'본304');
insert into `Lecture` values(167,'운영체제론',3,25,'본B04');
insert into `Lecture` values(234,'중급 영문법',3,20,'본201');
insert into `Lecture` values(239,'세법개론',3,40,'본204');
insert into `Lecture` values(248,'빅데이터 개론',3,20,'본B01');
insert into `Lecture` values(253,'컴퓨팅사고와 코딩',2,10,'본B02');
insert into `Lecture` values(349,'사회복지 마케팅',2,50,'본301');

insert into `Register` (`regStdNo`,`regLecNo`) values ('20201126',234);
insert into `Register` (`regStdNo`,`regLecNo`) values ('20201016',248);
insert into `Register` (`regStdNo`,`regLecNo`) values ('20201016',253);
insert into `Register` (`regStdNo`,`regLecNo`) values ('20201126',239);
insert into `Register` (`regStdNo`,`regLecNo`) values ('20210216',349);
insert into `Register` (`regStdNo`,`regLecNo`) values ('20210326',349);
insert into `Register` (`regStdNo`,`regLecNo`) values ('20201016',167);
insert into `Register` (`regStdNo`,`regLecNo`) values ('20220416',349);
#실습3-4
select * from `Lecture`;
#실습3-5
select * from `student`;
#실습3-6
select * from `Register`;
#실습3-7
select * from `student` where `stdYear`=3;
#실습3-8
select * from `lecture` where `leccredit`=2;
#실습3-9
update `register` set `regmidscore` =36, `regfinalscore` = 42 where
`regstdno`='20201126' and `reglecno`=234;
update `register` set `regmidscore`=24, `regfinalscore`=62 where
`regstdno`='20201016' and `reglecno`=248;
update `register` set `regmidscore`=28, `regfinalscore` =40 where
`regstdno`='20201016' and `reglecno`=253;
update `register` set `regmidscore`=37,`regfinalscore`=57 where
`regstdno`='20201126' and `reglecno`= 239;
update `register` set `regmidscore` =28, `regfinalscore` =68 where
`regstdno`='20210216' and `reglecno`=349;
update `register` set `regmidscore`=16, `regfinalscore`=65 where
`regstdno` ='20210326' and `reglecno`=349;
update `register` set `regmidscore`=18, `regfinalscore`=38 where
`regstdno`='20201016' and `reglecno`=167;
update `register` set `regmidscore`=25,`regfinalscore`=58 where
`regstdno`='20220416' and `reglecno`=349;
#실습3-10
update `register` set `regtotalscore`= `regmidscore` + `regfinalscore`,
`reggrade` = if(`regtotalscore` >=90,'A',
			if(`regtotalscore` >=80, 'B',
			if(`regtotalscore` >=70, 'C',
            if(`regtotalscore` >=60 ,'D','F'))));
#실습3-11
select * from `register` where `regtotalscore` order by `regtotalscore` desc;
#실습3-12
select * from `register` where `reglecno`=349 order by `regtotalscore` desc;
#실습3-13
select * from `lecture` where `lectime`>=30;
#실습3-14
select `lecname`,`lecclass` from `lecture`;
#실습3-15
select `stdno`,`stdname` from `student`;
#실습3-16
select * from `student`where `stdaddress` is null ;
#실습3-17
select * from `student` where `stdAddress` like '부산%';
#실습3-18
select * from `student` as a left join `register` as b on a.stdno= b.regstdno;
#실습3-19
select 
	a.`stdno`,
    a.`stdname`,
    b.`reglecno`,
    b.`regmidscore`,
    b.`regfinalscore`,
    b.`regtotalscore`,
    b.`reggrade`
FROM `Student` AS a, `Register` AS b WHERE a.stdNo = b.regStdNo;
#실습3-20
 SELECT `stdName`, `stdNo`, `regLecNo` 
FROM `Student` AS a 
JOIN `Register` AS b 
on a.stdno = b.regstdno
where `reglecno`=349;
#실습3-21
SELECT
  a.stdNo,
  a.stdName,
  COUNT(b.regLecNo) AS `수강신청 건수`,
  SUM(b.regTotalScore) AS `종합점수`,
  SUM(b.regTotalScore) / COUNT(b.regLecNo) AS `평균`
FROM `Student` AS a
JOIN `Register` AS b ON a.stdNo = b.regStdNo
GROUP BY `stdNo`
order by `stdno` 
;
#실습3-22
SELECT * FROM `Register` AS a
join `lecture` as b
on a.reglecno =b.lecno;
#실습3-23
 SELECT 
`regStdNo`,
 `regLecNo`,
 `lecName`,
 `regMidScore`,
 `regFinalScore`,
 `regTotalScore`,
 `regGrade`
 FROM `register` as a
 join `lecture` as b
 on a.reglecno=b.lecno;
#실습3-24
SELECT
 COUNT(*) AS `사회복지 마케팅 수강 신청건수`,
 AVG(`regTotalScore`) AS `사회복지 마케팅 평균`
 FROM `Register` AS a JOIN `Lecture` AS b ON a.reglecno=b.lecno
 where `lecname` = '사회복지 마케팅';
#실습3-25
 SELECT 
`regStdNo`,
 `lecName`
 FROM `Register` AS a JOIN `Lecture` AS b ON a.reglecno=b.lecno
 where `regGrade` ='A';
#실습3-26
select * from `student` as a
join `register` as b on a.stdno= b.regstdno
join `lecture` as c on b.reglecno = c.lecno;
#실습3-27
 SELECT 
`stdNo`,
 `stdName`,
 `lecNo`,
 `lecName`,
 `regMidScore`,
 `regFinalScore`,
 `regTotalScore`,
 `regGrade`
 FROM `Student` AS a
 join `register` as b on a.stdno= b.regstdno
join `lecture` as c on b.reglecno = c.lecno;
#실습3-28
select
  `stdNo`,
 `stdName`,
 `lecName`,
 `regTotalScore`,
 `regGrade`
 from `student` as a
join `register` as b on a.stdno= b.regstdno
join `lecture` as c on b.reglecno = c.lecno
where `reggrade` = 'F';
#실습3-29
select 
	`stdno`,
    `stdname`,
    sum(`leccredit`) as '이수학점'
from `student` as a
join `register` as b on a.stdno= b.regstdno
join `lecture` as c on b.reglecno = c.lecno
where `reggrade` < 'F'
group by `stdno` ;

#실습3-30
select 
	`stdno`,
    `stdname`,
    GROUP_CONCAT(`lecName`) AS `신청과목`,
 GROUP_CONCAT(if(`regTotalScore` >= 60, `lecName`, null)) AS `이수과목`
from `student` as a
join `register` as b on a.stdno= b.regstdno
join `lecture` as c on b.reglecno = c.lecno
group by `stdno`;
