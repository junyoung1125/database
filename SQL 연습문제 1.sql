#날짜: 2025/01/13
#이름: 변준영
#내용: SQL 연습문제1

#실습 1-1
create database `shop`;
create user 'shop'@'%' identified by '1234';
grant all privileges on Shop.* to 'shop'@'%';
flush privileges;

#실습 1-2
create table `customer`(
	`custld`	VARCHAR(10) NOT NULL primary key ,
    `name`		VARCHAR(10) NOT NUll, 
    `hp`		CHAR(13) UNIQUE key Default NULL,
    `addr`		VARCHAR(100) Default Null,
    `rdate`		date NOT Null
);

create table `product`user1 (
	`prodNo`	INT Not NUll Primary key,
    `prodName`	VARCHAR(10) Not Null,
    `stock`		INT NOT NULL default 0,
    `price`		INT default NUll,
    `company`	VARCHAR(20) Not null
);

alter table `product` modify `prodNo` int auto_increment;

create table `order`(
	`orderNo`	INT NOT Null auto_increment primary key,
    `orderId`	VARCHAR(10) Not Null,
    `orderProduct`	INT NOT NUll,
    `orderCount`	INT NOT NUll Default 1,
    `orderDate`	datetime NOT Null
);


#실습 1-3customer

insert into`Customer` values('c101','김유신','010-1234-1001','김해시 봉황동','2022-01-01');
insert into`Customer` values('c102','김춘추','010-1234-1002','경주시 보문동','2022-01-02');
insert into`Customer` values('c103','장보고','010-1234-1003','완도군 정산면','2022-01-03');
insert into`Customer` values('c104','강감찬','010-1234-1004','서울시 마포구','2022-01-04');
insert into`Customer` values('c105','이성계',Null,Null,'2022-01-05');
insert into`Customer` values('c106','정철','010-1234-1006','경기도 용인시','2022-01-06');
insert into`Customer` values('c107','허준',Null,Null,'2022-01-07');
insert into`Customer` values('c108','이순신','010-1234-1008','서울시 영등포구','2022-01-08');
insert into`Customer` values('c109','송상현','010-1234-1009','부산시 동래구','2022-01-09');
insert into`Customer` values('c110','정약용','010-1234-1010','경기도 광주시','2022-01-10');

insert into `Product` values(1,'새우깡',5000,1500,'농심');
insert into `Product` values(2,'초코파이',2500,2500,'오리온');
insert into `Product` values(3,'포카칩',3600,1700,'오리온');
insert into `Product` values(4,'양파링',1250,1800,'농심');
insert into `Product` values(5,'죠리퐁',2200,NULL,'크라운');
insert into `Product` values(6,'마카렛트',3500,1500,'롯데');
insert into `Product` values(7,'뿌셔뿌셔',1650,1200,'오뚜기');
update `product` set price = 3500 where prodname = '마카렛트';

insert into `Order` values(1,'c102',3,2,'2022-07-01 13:15:10');
insert into `Order` values(2,'c101',4,1,'2022-07-01 14:16:11');
insert into `Order` values(3,'c108',1,1,'2022-07-01 17:23:18');
insert into `Order` values(4,'c109',6,5,'2022-07-02 10:46:36');
insert into `Order` values(5,'c102',2,1,'2022-07-03 09:15:37');
insert into `Order` values(6,'c101',7,3,'2022-07-03 12:35:12');
insert into `Order` values(7,'c110',1,2,'2022-07-03 16:55:36');
insert into `Order` values(8,'c104',2,4,'2022-07-04 14:23:23');
insert into `Order` values(9,'c102',1,3,'2022-07-04 21:54:34');
insert into `Order` values(10,'c107',6,1,'2022-07-05 14:21:03');

#실습 1-4
select * from `Customer`;
#실습 1-5
select `custld`,`name`,`hp` from `customer`;
#실습 1-6
select * from `product`;
#실습 1-7
select company from `product`;
#실습 1-8 (모름)
select  distinct `company` from `product` ;
#실습 1-9
select `prodName`, `price` from `product`;
#실습 1-10 
select `prodName`,`price`+ 500 as '조정단가' from `product`;
#실습 1-11
select `prodname`, `stock`, `price` from `product` where `company` = '오리온';
#실습 1-12
select `orderProduct`, `orderCount`, `orderdate` from `order` where `orderid` = 'c102';
#실습 1-13(모름)
select `orderProduct`, `orderCount`, `orderdate`
		from `order`
		where `orderid` = 'c102'
        AND `orderCount` >= 2;
#실습 1-14
select * from `product` where `price` >= 1000 and `price` <= 2000;
#실습 1-15
select `custld`,`name`, `hp`, `addr` from `customer` where `name` LIKE '김%';
#실습 1-16
select `custld`, `name`, `hp`, `addr` from `customer` where `name` LIKE  '__';
#실습 1-17(모름)
select * from `customer` where `hp` is null;
#실습 1-18(모름)
select *from `customer` where `addr` is not null ;
#실습 1-19(모름)
select * from `customer` order by `rdate` desc;
#실습 1-20(모름)
select * from `order` where `ordercount` >=3 order by `orderCount` desc, `orderproduct` asc; 
#실습 1-21(모름)
select avg(price) as 'AVG(price)' from `product`;
#실습 1-22
select sum(stock) as '재고량 합계' from `product` where `company` = '농심';
#실습 1-23
select count(*) as '고객 수' from `customer`;
#실습 1-24(모름)
select count(distinct `company`) as `제조업체 수` from `product`;
#실습 1-25
select  `orderproduct` as `주문 상품번호` ,
		sum(`ordercount`) as `총 주문수량` 
		from `order` group by `orderproduct` order by `주문 상품번호`;
#실습 1-26
select `company` as `제조업체`,
		count(*) as `제품수`, 
		max(`price`) as `최고가`
		from `product` 
        group by `company`
        order by `제조업체`;
#실습 1-27
select `company` as `제조업체` ,
		count(*) as `제품수`,
		max(`price`) as `최고가`
		from `product`
        group by `company`
        having `제품수` >= 2;
#실습 1-28
select `orderproduct`, `orderid`, 
		sum(`ordercount`) as `총 주문수량` 
		from `order` 
        group by `orderproduct`, `orderid`
        order by `orderproduct`;
#실습 1-29
select a.orderid, b.prodname from `order` as a 
join `product` as b
on a.orderproduct = b.prodno
where `orderid` = 'c102';
#실습 1-30
SELECT `orderid`, `name`, `prodName`, `orderDate` 
FROM `Order` AS a
 JOIN `Customer` AS b ON a.orderId = b.custld
 JOIN `Product` AS c  ON a.orderProduct = c.prodNo
 where substr(`orderdate`, 1, 10) = '2022-07-03'