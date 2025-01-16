#날짜: 20205/01/16
#이름: 변준영
#내용: SQL 연습문제4

#실습4-1
Create database `theater`;
create user 'theater'@'%' identified by '1234';
grant all privileges on theater.* to 'theater'@'%';
flush privileges;
#실습4-2
CREAte table `Movies`(
	`movie_id`	INT not null auto_increment primary key,
    `title`	VARCHAR(30) not null,
    `genre`	VARCHAR(10) not null,
    `release_date`	DATE not null
);
CReate table `Customers`(
	`customer_id`	INT not null AUTO_INCREMENT PRIMARY KEY,
    `name`	VARCHAR(20) not null,
    `email`		VARCHAR(50) not null,
    `phone`	CHAR(13) not null
);

CREATE TABLE `Bookings`(
	`booking_id`	INT not null PRIMARY KEY,
    `customer_id`	INT not null,
    `movie_id`	INT not null,
    `num_tickets`	INT not null,
    `booking_date`	DATETIME not null
);

#실습4-3
insert into `movies` values(1,'쇼생크의 탈출','드라마','1994-10-14');
insert into `movies` values(2,'타이타닉','로맨스','1997-03-24');
insert into `movies` values(3,'탑건','액션','1987-07-16');
insert into `movies` values(4,'쥬라기공원','액션','1994-02-16');
insert into `movies` values(5,'글래디에이터','액션','2000-05-03');
insert into `movies` values(6,'시네마천국','드라마','1995-04-12');
insert into `movies` values(7,'미션임파서블','액션','1995-11-11');
insert into `movies` values(8,'노트북','로맨스','2003-08-23');
insert into `movies` values(9,'인터스텔라','SF','2011-05-26');
insert into `movies` values(10,'아바타','SF','2010-02-10');

insert into `Customers` values(1,'김유신','kys@example.com','010-1234-1001');
insert into `Customers` values(2,'김춘추','kcc@example.com','010-1234-1002');
insert into `Customers` values(3,'장보고','jbg@example.com','010-1234-1003');
insert into `Customers` values(4,'강감찬','kgc@example.com','010-1234-1004');
insert into `Customers` values(5,'이순신','lss@example.com','010-1234-1005');

insert into `Bookings` values(101,1,1,2,'2023-01-10 00:00:00');
insert into `Bookings` values(102,2,2,3,'2023-01-11 00:00:00');
insert into `Bookings` values(103,3,2,2,'2023-01-13 00:00:00');
insert into `Bookings` values(104,4,3,1,'2023-01-17 00:00:00');
insert into `Bookings` values(105,5,5,2,'2023-01-21 00:00:00');
insert into `Bookings` values(106,3,8,2,'2023-01-21 00:00:00');
insert into `Bookings` values(107,1,10,4,'2023-01-21 00:00:00');
insert into `Bookings` values(108,2,9,1,'2023-01-22 00:00:00');
insert into `Bookings` values(109,5,7,2,'2023-01-23 00:00:00');
insert into `Bookings` values(110,3,4,2,'2023-01-23 00:00:00');
insert into `Bookings` values(111,1,6,1,'2023-01-24 00:00:00');
insert into `Bookings` values(112,3,5,3,'2023-01-25 00:00:00');
#실습4-4
select title from `movies`;
#실습4-5
select * from `movies` where `genre`='로맨스';
#실습4-6
select
	`title`,
    `release_date`
from `movies` where `release_date` >= '2010-01-01';
#실습4-7
select
	`booking_id`, `booking_date`
from `bookings` Where `num_tickets` >= 3;
#실습4-8
select * from `bookings` where `booking_date` <= '2023-01-20';
#실습4-9
select * from `movies` where `release_date` Between '1990-01-01' AND '1999-12-31';
#실습4-10
select * from `bookings`
order by `booking_date` desc
limit 3;
#실습4-11
select `title`, `release_date` from `movies`
order by `release_date` Asc
limit 1;
#실습4-12
select
	concat(`title`,'-',`release_date`) as movie_INFO
FROM `movies`
where `genre`='액션'AND `title` like '%공원%'
order by `release_date` asc
limit 1;
#실습4-13
select `booking_date`, `title`
From `bookings`
join `movies`
on `bookings`.movie_id=`movies`.movie_id
where customer_id=2;
#실습4-14
select 
C.`name`, C.`phone`, B.`booking_date`, M.`title`
from `bookings` B
join CUstomers C on B.customer_id=C.customer_id
join movies m on B.movie_id=M.movie_id;
#실습4-15
select
M.`genre`,
AVG(B.num_tickets) as avg_tickets
From `bookings` B
join `movies` m on b.`movie_id` = m.`movie_id`
group by m.genre;


#실습4-16
select
	C.name,
	Avg(B.num_tickets) AS avg_tickets
from `Bookings` b
join customers c on b.customer_id=C.customer_id
group by c.name;

#실습4-17
select
	C.name,
    sum(b.num_tickets) as `전체 예매 티켓 수`
from bookings b
join customers c on b.customer_id=c.customer_id
group by c.name
order by `전체 예매 티켓 수` desc;
#실습4-18
select
	`booking_id` ,`movie_id`, `name`,`booking_date`
    from bookings B
    join customers c on b.customer_id=c.customer_id
    order by b.booking_date asc
    limit 1;
#실습4-19
select
	`genre`, `title`, `release_date`
from `movies`
where (`genre`,`release_date`) IN (
select `genre`, max(`release_date`)
from `movies`
group by `genre`
);
#실습4-20
select * from `movies`
where `movie_id` IN(
select `movie_id` from `bookings`
where `customer_id`= (select `customer_id` from `customers` where name='김유신')
);
#실습4-21
SELECT name, email FROM Customers
WHERE customer_id = (
SELECT customer_id
FROM Bookings
GROUP BY customer_id
ORDER BY SUM(num_tickets) DESC 
	limit 1
	);
#실습4-22
SELECT * FROM bookings
WHERE num_tickets > (SELECT	avg(num_tickets)from bookings);
#실습4-23
SELECT
M.title, SUM(B.num_tickets) AS total_tickets
FROM Bookings B
JOIN Movies M ON B.movie_id = M.movie_id
group by m.`movie_id`;
#실습4-24
SELECT
c.name,
SUM(b.num_tickets) AS total_tickets,
AVG(b.num_tickets) AS avg_tickets
FROM Bookings b
JOIN Customers c ON b.customer_id = c.customer_id
group by c.name;
#실습4-25
SELECT
c.customer_id,
c.name,
c.email,
SUM(b.num_tickets) AS `예매 티켓수`
FROM Bookings b
JOIN Customers c ON b.customer_id = c.customer_id
group by c.`customer_id`
ORDER BY `예매 티켓수` DESC;
#실습4-26
select
	c.name,
	m.title,
    b.num_tickets,
    b.booking_date
FROM bookings b
JOIN customers c ON b.customer_id = c.customer_id
JOIN movies m ON b.movie_id = m.movie_id
ORDER BY num_tickets DESC;

#실습4-27
SELECT
M.title,
M.genre,
SUM(B.num_tickets) AS `예매 티켓 수`,
AVG(B.num_tickets) AS `평균 티켓 수`
FROM bookings B
JOIN Movies M ON B.movie_id = M.movie_id
WHERE M.genre = '액션'
group by m.`movie_id`
ORDER BY `평균 티켓 수` DESC;
#실습4-28
select
B.customer_id,
C.name,
SUM(`num_tickets`) AS `ticket_total`
FROM bookings B
JOIN Customers C ON B.customer_id = C.customer_id
group by c.`customer_id`
ORDER BY ticket_total DESC;
#실습4-29
SELECT
B.booking_id,
B.customer_id,
B.movie_id,
MaxTickets.max_tickets
FROM Bookings B
JOIN (
SELECT movie_id, MAX(num_tickets) AS max_tickets
FROM Bookings
	group by movie_id
) AS MaxTickets
ON B.movie_id = MaxTickets.movie_id AND B.num_tickets = MaxTickets.max_tickets;

#실습4-30

SELECT @@sql_mode;
SET SESSION sql_mode = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


SELECT
B.booking_id,
B.customer_id,
C.name,
M.title,
M.genre,
SUM(B.num_tickets) AS `예매 티켓 수`
FROM bookings B
JOIN movies M ON B.movie_id = M.movie_id
JOIN customers C ON B.customer_id = C.customer_id
GROUP BY M.title
having `예매 티켓 수` = (
SELECT MAX(total_tickets)
FROM (
SELECT SUM(B2.num_tickets) AS total_tickets
FROM Bookings B2
JOIN Movies M2 ON B2.movie_id = M2.movie_id
WHERE M2.genre = M.genre
GROUP BY M2.title
 ) AS SelectMAX
)
ORDER BY `예매 티켓 수` DESC;
