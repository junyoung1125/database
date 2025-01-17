#날짜: 20205/01/17
#이름: 변준영
#내용: SQL 연습문제5

#실습5-1
Create database `BookStore`;
create user 'bookstore'@'%' identified by '1234';
grant all privileges on `BookStore`.* to 'bookstore'@'%';
flush privileges;
#실습5-2
CREATE TABLE `Customer` (
	`custId`	INT not null auto_increment primary key,
    `name`	VARCHAR(10) not null,
    `address`	VARCHAR(20) default null,
    `phone`	VARCHAR(13) default null
);
CREATE TABLE `Book`(
	`bookId`	INT not null Primary key,
    `bookName`	VARCHAR(20) not null,
    `publisher`	VARCHAR(20) not null,
    `price`	INT default null
);
CREATE TABLE `Orders` (
	`orderId`	INT not null primary key AUTO_INCREMENT,
    `custId`	INT not null,
    `bookId`	INT not null,
    `salePrice`	INT not null,
    `orderDate`	DATE not null
);

#실습5-3
insert into `Customer` (`custId`,`name`,`address`,`phone`) values (1,'박지성','영국 멘체스타','010-5000-0001');
insert into `Customer` (`custId`,`name`,`address`,`phone`) values (2,'김연아','대한민국 서울','010-6000-0001');
insert into `Customer` (`custId`,`name`,`address`,`phone`) values (3,'장미란','대한민국 강원도','010-7000-0001');
insert into `Customer` (`custId`,`name`,`address`,`phone`) values (4,'추신수','미국 클리블랜드','010-8000-0001');
insert into `Customer` (`custId`,`name`,`address`,`phone`) values (5,'박세리','대한민국 대전',null);

insert into `Book` (`bookId`,`bookName`,`publisher`,`price`)values(1,'축구의 역사','굿스포츠',7000 );
insert into `Book` (`bookId`,`bookName`,`publisher`,`price`)values(2,'축구아는 여자','나무수',13000 );
insert into `Book` (`bookId`,`bookName`,`publisher`,`price`)values(3,'축구의 이해','대한미디어',22000 );
insert into `Book` (`bookId`,`bookName`,`publisher`,`price`)values(4,'골프 바이블','대한미디어',35000 );
insert into `Book` (`bookId`,`bookName`,`publisher`,`price`)values(5,'피겨 교본','굿스포츠',8000 );
insert into `Book` (`bookId`,`bookName`,`publisher`,`price`)values(6,'역도 단계별기술','굿스포츠', 6000);
insert into `Book` (`bookId`,`bookName`,`publisher`,`price`)values(7,'야구의 추억','이상미디어',20000 );
insert into `Book` (`bookId`,`bookName`,`publisher`,`price`)values(8,'야구를 부탁해','이상미디어',13000 );
insert into `Book` (`bookId`,`bookName`,`publisher`,`price`)values(9,'올림픽 이야기','삼성당',7500 );
insert into `Book` (`bookId`,`bookName`,`publisher`,`price`)values(10,'Olympic Champions','Pearson',13000 );

insert into `Orders` (orderId,custid,bookid,saleprice,orderdate) values (1,1,1,6000,'2014-07-01');
insert into `Orders` (orderId,custid,bookid,saleprice,orderdate) values (2,1,3,21000,'2014-07-03');
insert into `Orders` (orderId,custid,bookid,saleprice,orderdate) values (3,2,5,8000,'2014-07-03');
insert into `Orders` (orderId,custid,bookid,saleprice,orderdate) values (4,3,6,6000,'2014-07-04');
insert into `Orders` (orderId,custid,bookid,saleprice,orderdate) values (5,4,7,20000,'2014-07-05');
insert into `Orders` (orderId,custid,bookid,saleprice,orderdate) values (6,1,2,12000,'2014-07-07');
insert into `Orders` (orderId,custid,bookid,saleprice,orderdate) values (7,4,8,13000,'2014-07-07');
insert into `Orders` (orderId,custid,bookid,saleprice,orderdate) values (8,3,10,12000,'2014-07-08');
insert into `Orders` (orderId,custid,bookid,saleprice,orderdate) values (9,2,10,7000,'2014-07-09');
insert into `Orders` (orderId,custid,bookid,saleprice,orderdate) values (10,3,8,13000,'2014-07-10');
#실습5-4
select custid,name,address from customer; 
#실습5-5
select bookname,price from book;
#실습5-6
select price,bookname from book;
#실습5-7
select * from book;
#실습5-8
select publisher from book;
#실습5-9
select distinct publisher from book  ;
select publisher from book group by publisher;
#실습5-10
select * from book where price >= 20000;
#실습5-11
select * from book where price <= 20000;
#실습5-12
select * from book where price >=10000 AND price <=20000;
select * from book where price between 10000 and 20000;
#실습5-13
select bookid, bookname, price from book where price >=15000 AND price <=30000;

#실습5-14
select * from book where bookid in (2,3,5);
#실습5-15
select * from book where bookid %2=0 ;
select * from book where mod(bookid,2)=0;
#실습5-16
select *from customer where name like '박%';
#실습5-17
select * from customer where address like '%대한민국%';
#실습5-18
select * from customer where phone is not null;
#실습5-19
select * from book where publisher in('굿스포츠','대한미디어');
#실습5-20
select publisher from book where bookname='축구의 역사';
#실습5-21
select publisher from book where bookname like '%축구%';
#실습5-22
select * from book where substring(bookname,2,1)='구';
select * from book where bookname like '_구%';
#실습5-23
select * from book where bookname like '%축구%' AND price >= 20000;
#실습5-24
select * from book order by bookname; 
#실습5-25
select * from book order by price asc,bookname asc;
select * from book order by price, bookname;
#실습5-26
select * from book order by price desc,publisher asc;
#실습5-27
select * from book order by price  desc limit 3;
#실습5-28
select * from book order by price asc limit 3;
#실습5-29
select  sum(saleprice) as '총판매액' from orders ;
#실습5-30
select sum(saleprice) as '총판매액' , avg(saleprice) as '평균값', min(saleprice) as '최저가', max(saleprice) as '최고가' from orders;
#실습5-31
select count(*) as '판매건수' from orders;
#실습5-32
update book
set bookname = replace(bookname,'야구','농구')
where bookname like '%야구%';
select * from book;
#실습5-32(업뎃안한버전)
select
	bookid,
	replace(bookname,'야구','농구') as bookname,
    publisher,
    price
from book;
#실습5-33
select 
	custid,
    count(*) as '수량'
from orders 
where salePrice >= 8000
group by custid
having '수량' >=2;

#실습5-34
select * from customer as a join orders as b on a.custid=b.custid;
select * from customer join orders using(custid);
select * from customer a, orders b where a.custid=b.custid;
#실습5-35
select * from customer as a join orders as b on a.custid=b.custid order by a.custid;
#실습5-36
select name, saleprice from customer as a join orders as b on a.custid=b.custid order by a.custid;
#실습5-37
select name, sum(saleprice) from customer as a join orders as b on a.custid=b.custid group by a.custid order by name;
#실습5-38
select name,bookname from customer as a join orders as b on a.custid=b.custid join book as c on b.bookid=c.bookid ;
#실습5-39
select name,bookname from customer as a join orders as b on a.custid=b.custid join book as c on b.bookid=c.bookid 
where saleprice =20000;
#실습5-40
select name,saleprice from customer a left  join orders as b on a.custid=b.custid;
#실습5-41
select sum(saleprice) as '총매출'from customer as a join orders as b on a.custid=b.custid
where name ='김연아';
#실습5-42
select bookname from book order by price desc limit 1;
select bookname from book where price=(select max(price)from book);
#실습5-43
select name from customer as a
left join orders as b on a.custid = b.custid
where orderid is null;
#실습5-44
insert into book set
					bookid=11,
					bookname='스포츠의학',
                    publisher='한솔의학서적',
                    price=null;
#실습5-45
update customer 
	set address='대한민국 부산' where custid=5;
select * from customer
