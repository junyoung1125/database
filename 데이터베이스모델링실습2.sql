INSERT INTO `student` VALUES('20101001',10,'P10101','정우성','760121-1234567','010-1101-7601',NUll,'서울');
INSERT INTO `student` VALUES('20101002',10,'P10101','이정재','750611-1234567','010-1102-7506',NULL,'서울');
INSERT INTO `student` VALUES('20111011',11,'P11103','전지현','890530-1234567','010-1103-8905','jjh@naver.com','대전');
INSERT INTO `student` VALUES('20111013',11,'P11103','이나영','790413-1234567','010-2101-7904','lee@naver.com','대전');
INSERT INTO `student` VALUES('20111014',11,'P11104','원빈','660912-1234567','010-2104-6609','one@daum.net','대전');
INSERT INTO `student` VALUES('21221010',22,'P22110','장동건','790728-1234567','010-3101-7907','jang@naver.com','대구');
INSERT INTO `student` VALUES('21231002',23,'P23102','고소영','840615-1234567','010-4101-8406','goso@daum.net','대구');
INSERT INTO `student` VALUES('22311011',31,'P31104','김연아','651021-1234567','010-5101-6510','yuna@daum.net','대구');
INSERT INTO `student` VALUES('22311014',31,'P31104','유재석','721128-1234567','010-6101-7211',Null,'부산');
INSERT INTO `student` VALUES('22401001',40,'P40101','강호동','920907-1234567','010-7103-9209',Null,'부산');
INSERT INTO `student` VALUES('22401002',40,'P40101','조인성','891209-1234567','010-7104-8912','join@gmail.com','광주');
INSERT INTO `student` VALUES('22421003',42,'P42103','강동원','770314-1234567','010-8101-7703','dong@naver.com','광주');

INSERT INTO `department` VALUES(10,'국어국문학과','051-510-1010');
INSERT INTO `department` VALUES(11,'영어영문학과','051-510-1011');
INSERT INTO `department` VALUES(20,'경영학과','051-510-1020');
INSERT INTO `department` VALUES(21,'경제학과','051-510-1021');
INSERT INTO `department` VALUES(22,'정치외교학과','051-510-1022');
INSERT INTO `department` VALUES(23,'사회복지학과','051-510-1023');
INSERT INTO `department` VALUES(30,'수학과','051-510-1030');
INSERT INTO `department` VALUES(31,'통계학과','051-510-1031');
INSERT INTO `department` VALUES(32,'생명과학과','051-510-1032');
INSERT INTO `department` VALUES(40,'기계공학과','051-510-1040');
INSERT INTO `department` VALUES(41,'전자공학과','051-510-1041');
INSERT INTO `department` VALUES(42,'컴퓨터공학과','051-510-1042');

INSERT INTO `lecture` VALUES('101001','P10101','대학 글쓰기',2,10,'본102');
INSERT INTO `lecture` VALUES('101002','P10102','한국어음운론',3,30,'본102');
INSERT INTO `lecture` VALUES('101003','P10102','한국현대문학사',3,30,'본103');
INSERT INTO `lecture` VALUES('111011','P11103','중세영문학',3,25,'본201');
INSERT INTO `lecture` VALUES('111012','P11104','영미시',3,25,'본201');
INSERT INTO `lecture` VALUES('231110','P23102','사회복지학개론',1,8,'별관103');
INSERT INTO `lecture` VALUES('311002','P31101','통계학의 이해',2,16,'별관303');
INSERT INTO `lecture` VALUES('311003','P31104','기초 통계학',3,26,'별관303');
INSERT INTO `lecture` VALUES('401019','P40101','기계역학',3,36,'공학관102');
INSERT INTO `lecture` VALUES('421012','P42103','데이터베이스',3,32,'공학관103');


INSERT INTO `professor` VALUES('P10101',10,'김유신','750120-1234567','010-1101-1976','kimys@hg.ac.kr','서울');
INSERT INTO `professor` VALUES('P10102',10,'계백','740610-1234567','010-1102-1975','gaeback@hg.ac.kr','서울');
INSERT INTO `professor` VALUES('P11101',11,'김관창','880529-1234567','010-1103-1989','kwanch@hg.ac.kr','대전');
INSERT INTO `professor` VALUES('P11103',11,'김춘추','780412-1234567','010-2101-1979','kimcc@hg.ac.kr','대전');
INSERT INTO `professor` VALUES('P11104',11,'이사부','650911-1234567','010-2104-1966','leesabu@hg.ac.kr','대전');
INSERT INTO `professor` VALUES('P22110',22,'장보고','780727-1234567','010-3101-1979','jangbg@hg.ac.kr','대구');
INSERT INTO `professor` VALUES('P23102',23,'선덕여왕','830614-1234567','010-4101-1984','gueen@hg.ac.kr','대구');
INSERT INTO `professor` VALUES('P31101',31,'강감찬','641020-1234567','010-5101-1965','kang@hg.ac.kr','대구');
INSERT INTO `professor` VALUES('P31104',31,'신사임당','711127-1234567','010-6101-1972','sinsa@hg.ac.kr','부산');
INSERT INTO `professor` VALUES('P40101',40,'이이','910906-1234567','010-7103-1992','leelee@hg.ac.kr','부산');
INSERT INTO `professor` VALUES('P40102',40,'이황','881208-1234567','010-7104-1989','hwang@hg.ac.kr','광주');
INSERT INTO `professor` VALUES('P42103',42,'송상현','760313-1234567','010-8101-1977','ssh@hg.ac.kr','광주');

INSERT INTO `register` VALUES('20101001','101001','P10101',Null,Null,Null,Null,Null,Null);
INSERT INTO `register` VALUES('20101001','101002','P10102',Null,Null,Null,Null,Null,Null);
INSERT INTO `register` VALUES('20111013','111011','P11103',Null,Null,Null,Null,Null,Null);
INSERT INTO `register` VALUES('21231002','231110','P23102',Null,NULL,Null,Null,Null,Null);
INSERT INTO `register` VALUES('22401001','401019','P40101',Null,Null,Null,Null,Null,Null);
INSERT INTO `register` VALUES('22401001','421012','P42103',Null,Null,Null,Null,Null,Null);
INSERT INTO `register` VALUES('20101001','101003','P10102',Null,Null,Null,Null,Null,Null);
INSERT INTO `register` VALUES('22421003','311003','P31104',Null,Null,Null,Null,Null,Null);
INSERT INTO `register` VALUES('22421003','421012','P42103',Null,Null,Null,Null,Null,Null);
INSERT INTO `register` VALUES('20111013','111012','P11104',Null,Null,Null,Null,Null,NULL);

SELECT s.stdNo, s.stdName, s.stdHp, d.depNo, d.depName
FROM student s
JOIN department d ON s.depno=d.depno;

SELECT p.proNo, p.proName, p.proHp, d.depNo, d.depName
FROM professor p
JOIN department d ON p.depno=d.depno;

SELECT * FROM `department`;

SELECT * FROM `lecture`;

SELECT * FROM `professor`;

SELECT * FROM `register`;

SELECT l.lecNo, l.lecName, p.proName, p.proHp
FROM lecture l
JOIN professor p ON l.prono=p.prono;

SELECT l.lecNo, l.lecName, p.proHp, p.proName, p.proHp, d.depNo, d.depName
FROM
 	lecture l 
JOIN
	professor p  ON l.prono=p.proNo 
JOIN
	department d ON p.depno=d.depno;
	
SELECT r.stdNo, s.stdName, r.lecNo, l.lecName, r.proNo, p.proName
FROM
	register r
JOIN
	student s ON r.stdNo=s.stdno
JOIN
	lecture l ON r.lecNo=l.lecNo
JOIN
	professor p ON r.proNo=p.prono;
	

UPDATE `register`
SET
	regAttenScore = FLOOR(RAND()*100)+1,
	regmidscore= FLOOR(RAND()*100)+1,
	regfinalscore= FLOOR(RAND()*100)+1
WHERE stdNo = '20101001' AND lecNo = '101001' AND proNo= 'P10101';
	
UPDATE `register`
SET
	regAttenScore = FLOOR(RAND()*100)+1,
	regmidscore= FLOOR(RAND()*100)+1,
	regfinalscore= FLOOR(RAND()*100)+1
WHERE stdNo = '20101001' AND lecNo = '101002' AND proNo= 'P10102';

UPDATE `register`
SET
	regAttenScore = FLOOR(RAND()*100)+1,
	regmidscore= FLOOR(RAND()*100)+1,
	regfinalscore= FLOOR(RAND()*100)+1
WHERE stdNo = '20111013' AND lecNo = '111011' AND proNo= 'P11103';

UPDATE `register`
SET
	regAttenScore = FLOOR(RAND()*100)+1,
	regmidscore= FLOOR(RAND()*100)+1,
	regfinalscore= FLOOR(RAND()*100)+1
WHERE stdNo = '21231002' AND lecNo = '231110' AND proNo= 'P23102';

UPDATE `register`
SET
	regAttenScore = FLOOR(RAND()*100)+1,
	regmidscore= FLOOR(RAND()*100)+1,
	regfinalscore= FLOOR(RAND()*100)+1
WHERE stdNo = '22401001' AND lecNo = '401019' AND proNo= 'P40101';

UPDATE `register`
SET
	regAttenScore = FLOOR(RAND()*100)+1,
	regmidscore= FLOOR(RAND()*100)+1,
	regfinalscore= FLOOR(RAND()*100)+1
WHERE stdNo = '22401001' AND lecNo = '421012' AND proNo= 'P42103';

UPDATE `register`
SET
	regAttenScore = FLOOR(RAND()*100)+1,
	regmidscore= FLOOR(RAND()*100)+1,
	regfinalscore= FLOOR(RAND()*100)+1
WHERE stdNo = '20101001' AND lecNo = '101003' AND proNo= 'P10102';

UPDATE `register`
SET
	regAttenScore = FLOOR(RAND()*100)+1,
	regmidscore= FLOOR(RAND()*100)+1,
	regfinalscore= FLOOR(RAND()*100)+1
WHERE stdNo = '22421003' AND lecNo = '311003' AND proNo= 'P31104';

UPDATE `register`
SET
	regAttenScore = FLOOR(RAND()*100)+1,
	regmidscore= FLOOR(RAND()*100)+1,
	regfinalscore= FLOOR(RAND()*100)+1
WHERE stdNo = '22421003' AND lecNo = '421012' AND proNo= 'P42103';

UPDATE `register`
SET
	regAttenScore = FLOOR(RAND()*100)+1,
	regmidscore= FLOOR(RAND()*100)+1,
	regfinalscore= FLOOR(RAND()*100)+1
WHERE stdNo = '20111013' AND lecNo = '111012' AND proNo= 'P11104';
	
UPDATE `register`
SET
	regtotal = (regattenscore+regmidscore+regfinalscore)/3
	WHERE regattenscore IS NOT NULL AND regmidscore IS NOT NULL AND regfinalscore IS NOT NULL;
					
UPDATE `register`
SET reggrade=
	case
		when regtotal >=90 then 'a'
		when regtotal >=80 then 'b'
		when regtotal >=70 then 'c'
		when regtotal >=60 then 'd'
		ELSE 'f'
	END;
	
	SELECT * FROM `register`;
	
SELECT stdNo, lecNo, regtotal
FROM register
ORDER BY regtotal DESC
LIMIT 1;

SELECT AVG(regtotal) AS avgtotalscore
FROM register
WHERE stdNo = (SELECT stdNo FROM student WHERE stdName='정우성');