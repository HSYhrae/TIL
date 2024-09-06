-- 전체 데이터 추출
SELECT *
FROM titanic_train;

-- 일부 컬럼만 추출
SELECT PassengerId
	, Name
FROM titanic_train;

-- 중복 없이 데이터 추출
SELECT DISTINCT Pclass
FROM titanic_train;

SELECT DISTINCT Survived
				, Pclass
FROM titanic_train;

-- 컬럼명 변경하여 추출
SELECT Name AS 이름,
	Age AS 나이
FROM titanic_train;

SELECT Name 이름,
	Age 나이
FROM titanic_train;


SELECT Name AS '승객 이름',
	Age AS '승객 나이'
FROM titanic_train;


SELECT Name AS 승객_이름,
	Age AS 승객_나이
FROM titanic_train;

-- 조건에 맞는 데이터 추출
SELECT *
FROM titanic_train
WHERE Sex = 'male';

-- 비교 연산자
-- 같음
SELECT *
FROM titanic_train
WHERE Age = 40;

-- 초과
SELECT *
FROM titanic_train
WHERE Age > 40;

-- 이상
SELECT *
FROM titanic_train
WHERE Age >= 40;

-- 미만
SELECT *
FROM titanic_train
WHERE Age < 40;

-- 이하
SELECT *
FROM titanic_train
WHERE Age <= 40;

-- 다름
SELECT *
FROM titanic_train
WHERE Age <> 40;

SELECT *
FROM titanic_train
WHERE Age != 40;

-- 논리 연산자
-- AND
SELECT *
FROM titanic_train
WHERE Sex = 'male'
	AND Age >= 40;
 
-- OR
SELECT *
FROM titanic_train
WHERE Sex = 'male'
	OR Age >= 40;

-- 여러 데이터 한번에 추출    
-- OR
SELECT *
FROM titanic_train
WHERE Pclass = 1
	OR Pclass =2;
    
SELECT *
FROM titanic_train
WHERE Pclass IN (1, 2);

SELECT *
FROM titanic_train
WHERE PassengerId BETWEEN 100 AND 200;

SELECT *
FROM titanic_train
WHERE PassengerId > 100
	AND PassengerId < 200;

-- 값이 없는/있는 데이터 추출
SELECT *
FROM titanic_train   
WHERE Cabin IS NULL;

SELECT *
FROM titanic_train   
WHERE Cabin IS NOT NULL;

-- 패턴에 맞는 문자 추출
SELECT *
FROM titanic_train 
WHERE Name LIKE '%Mr.%';

SELECT *
FROM titanic_train 
WHERE Name NOT LIKE '%Mr.%';

SELECT *
FROM titanic_train 
WHERE Sex LIKE '_ale';

-- 데이터 순서 정렬
SELECT *
FROM titanic_train 
ORDER BY Age DESC;

SELECT *
FROM titanic_train 
ORDER BY Age ASC;

SELECT *
FROM titanic_train 
ORDER BY Age;

SELECT *
FROM titanic_train 
ORDER BY Age DESC, PassengerId DESC;