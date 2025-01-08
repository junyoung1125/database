#날짜 : 2025/01/08
#이름 : 변준영
#내용 : 4장 SQL 고급


#실습 4-1
create table `Member` (
	`uid`	Varchar(10) primary key,
    `name`	Varchar(10) not null,
    `hp`	Char(13) unique not null,
    `pos`	Varchar(10)	default '사원',
    `dep`	int,
    `rdate`	datetime not null

);





create table `Department` (
	`depNo`	int primary key,
    `name`	Varchar(10) not null,
    `tel`	char(12) not null

);



create table `Sales` (
	`seq`	int auto_increment primary key,
    `uid`	varchar(10) not null,
    `year`	year not null,
    `month`	tinyint not null,
    `sale`	int
);

#실습 4-2
insert into `member` values('a101','박혁거세','010-1234-1001','부장',101 ,NOW());
insert into `member` values('a102','김유신','010-1234-1002','차장',101 ,NOW());
insert into `member` values('a103','김춘추','010-1234-1003','사원',101 ,NOW());
insert into `member` values('a104','장보고','010-1234-1004','대리',101 ,NOW());
insert into `member` values('a105','강감찬','010-1234-1005','과장',101 ,NOW());
insert into `member` values('a106','이성계','010-1234-1006','차장',101 ,NOW());
insert into `member` values('a107','정철','010-1234-1007','차장',101 ,NOW());
insert into `member` values('a108','이순신','010-1234-1008','부장',101 ,NOW());
insert into `member` values('a109','허균','010-1234-1009','부장',101 ,NOW());
insert into `member` values('a110','정약용','010-1234-1010','사원',101 ,NOW());
insert into `member` values('a111','박지원','010-1234-1011','사원',101 ,NOW());



insert into `department` values(101,'영업1부','051-512-1001');
insert into `department` values(102,'영업2부','051-512-1002');
insert into `department` values(103,'영업3부','051-512-1003');
insert into `department` values(104,'영업4부','051-512-1004');
insert into `department` values(105,'영업5부','051-512-1005');
insert into `department` values(106,'영업지원부','051-512-1006');
insert into `department` values(107,'인사부','051-512-1007');

insert into `sales` (`uid`,`year`,`month`,`sale`) values('a101',2018,1,98100);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a102',2018,1,136000);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a103',2018,1,80100);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a104',2018,1,78000);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a105',2018,1,93000);

insert into `sales` (`uid`,`year`,`month`,`sale`) values('a101',2018,2,23500);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a102',2018,2,126000);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a103',2018,2,18500);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a105',2018,2,19000);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a106',2018,2,53000);

insert into `sales` (`uid`,`year`,`month`,`sale`) values('a101',2019,1,24000);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a102',2019,1,109000);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a103',2019,1,101000);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a104',2019,1,53500);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a107',2019,1,24000);

insert into `sales` (`uid`,`year`,`month`,`sale`) values('a102',2019,2,160000);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a103',2019,2,101000);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a104',2019,2,43000);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a105',2019,2,24000);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a106',2019,2,109000);

insert into `sales` (`uid`,`year`,`month`,`sale`) values('a102',2020,1,201000);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a104',2020,1,63000);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a105',2020,1,74000);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a106',2020,1,122000);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a107',2020,1,111000);

insert into `sales` (`uid`,`year`,`month`,`sale`) values('a102',2020,2,120000);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a103',2020,2,93000);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a104',2020,2,84000);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a105',2020,2,180000);
insert into `sales` (`uid`,`year`,`month`,`sale`) values('a108',2020,2,76000);

select*from `sales`;

#실습 4-3	
select *from `member` where `name` ='김유신';
select *from `member` where `name` <>'김춘추';
select *from `member` where `pos` in('사원','대리');
select *from `member` where `name` like '%신';
select *from `member` where `name` like '정_';
select *from `member` where `name` like '정%';
select *from `sales` where `sale` >50000;
select *from `sales` where `sale` >= 50000 and `sale` <100000 and `month` =1;
select *from `sales` where `sale` not between 50000 and 100000;
select *from `sales` where `year` in(2020);
select *from `sales` where `month` in(1, 2);

#실습 4-4
select *from `sales` order by `sale` desc;

#실습 4-5
select *from `sales` LIMIT 1,2;
select *from `member` order by `name`;
select *from `member` order by `name` desc;
select *from `member` order by `rdate` asc;
select *from `sales` limit 0,3;
select *from `sales` limit 5,3;
select *from `sales` limit 7,5;
select *from `sales`;

#실습 4-6
select *from `sales`;
select sum(`sale`)as `합계` from `sales`;
select ceiling(1.2);
select ceiling(1.8);
select floor(1.2);
select floor(1.8);
select ceiling(2.1);
select round(1.2);
select round(1.5);
select rand(); #0~1 사이 실수 랜덤
select ceiling(rand()*10); 
select COUNT(*)AS `갯수` from `sales`;
select left('helloWorld',5);
select right('HelloWorld',5);
select substring('HelloWorld',6,5);
select concat('Hello','JunYoung');
select NOw();

#실습 4-7 2018년 1월 매출의 총합을 구하시오
select sum(`sale`)as `2018년 1월 매출 총합` from `sales` where `year`='2018' and `month`=1;


#실습 4-8 2019년 2월에 5만원 이상 매출에 대한 총합과 평균을 구하시오
select 
sum(`sale`) as `총합`,
avg(`sale`) as `평균`
from `sales` 
where 
`year`=2019 and 
`month`=2 and 
`sale`>50000;
#실습 4-9 전체 매출 가운데 최저, 최고, 매출을 구하시오
select max(`sale`)as '최저',min(`sale`) as '최고' from `sales` where `year`=2020;
