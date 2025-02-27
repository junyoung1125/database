#날짜: 2025/02/27
#이름: 변준영
#내용: 8장 트랜잭션


#실습 8-1
START TRANSACTION; --작업시작
SELECT * FROM `bank_account`;
UPDATE `bank_account` SET
								`a_balance`= `a_balance`+10000
							where
								`a_no`='101-11-1001';
								
UPDATE `bank_account` SET
								`a_balance`= `a_balance`+10000
							where
								`a_no`='101-11-1002';

COMMIT;

#실습 8-2
START TRANSACTION;
UPDATE `bank_account` SET 
								`a_balance`=`a_balance`-10000
							where
								`a_no`='101-11-1001';
UPDATE `bank_account` SET
								`a_balance`=`a_balance`+10000
							where
								`a_no`='101-11-1002';
SELECT * FROM `bank_account`;	

ROLLBACK;

SELECT*FROM `bank_account`;	

SELECT @@AUTOCOMMIT;
SET autocommit=0;
UPDATE `bank_account` SET
								`a_balance`=`a_balance`-10000
							where
								`a_no`='101-11-1001';
SELECT * FROM `bank_account`;									