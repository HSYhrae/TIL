-- 숫자 연산
-- 더하기
SELECT Fare
		, Fare + 10 AS fare_plus10
FROM titanic_train;

-- 빼기
SELECT Fare
		, Fare - 5 AS fare_minus5
FROM titanic_train;

-- 곱하기
SELECT Fare
		, Fare * 2 AS double_fare
FROM titanic_train;

-- 나누기(/)
SELECT Fare
		, Fare / 2 AS fare_divid2
FROM titanic_train;

-- 정수 나누기(DIV)
SELECT Fare
		, Fare DIV 2 AS fare_divid2
FROM titanic_train;

-- 나머지(%, MOD)
SELECT Fare
		, Fare % 2 AS fare_divid2
FROM titanic_train;

SELECT Fare
		, Fare MOD 2 AS fare_divid2
FROM titanic_train;

-- 연산 함수
-- 절대값(ABS)
SELECT Fare
		, ABS(Fare)
FROM titanic_train;

-- 소수점 내림(CEIL)
SELECT Fare
		, CEIL(Fare)
FROM titanic_train;

-- 소수점 올림(FLOOR)
SELECT Fare
		, FLOOR(Fare)
FROM titanic_train;

-- 반올림(ROUND)
SELECT Fare
		, ROUND(Fare)
FROM titanic_train;

SELECT Fare
		, ROUND(Fare, 0)
FROM titanic_train;

SELECT Fare
		, ROUND(Fare, 1)
FROM titanic_train;

-- 거듭제곱(POW, POWER)
SELECT Fare
		, POW(Fare, 2)
FROM titanic_train;

SELECT Fare
		, POWER(Fare, 2)
FROM titanic_train;

SELECT Fare
		, POW(Fare, 3)
FROM titanic_train;

-- 제곱근(SQRT)
SELECT Fare
		, SQRT(Fare)
FROM titanic_train;

-- 집계 함수
-- 개수 세기(COUNT)
SELECT COUNT(Fare)
FROM titanic_train;

-- 합계(SUM)
SELECT SUM(Fare) AS total_fare
FROM titanic_train;

SELECT ROUND(SUM(Fare), 0) AS total_fare
FROM titanic_train;

-- 평균(AVG)
SELECT AVG(Fare) AS avg_fare
FROM titanic_train;

-- 최소값(MIN)
SELECT MIN(Age)
FROM titanic_train;

-- 최대값(MAX)
SELECT MAX(Age)
FROM titanic_train;

-- 데이터 요약하기
-- GROUP BY 실습
SELECT Sex
	, AVG(Fare)
FROM titanic_train
GROUP BY Sex;

SELECT Sex
		, Pclass
		, AVG(Fare)
FROM titanic_train
GROUP BY Sex, Pclass;

-- HAVING
SELECT Sex
	, AVG(Fare) AS avg_fare
FROM titanic_train
GROUP BY Sex
HAVING avg_fare >= 30;

-- WHERE 조건과 비교
SELECT Sex
	, AVG(Fare) AS avg_fare
FROM titanic_train
WHERE Fare >= 30
GROUP BY Sex;

-- ORDET BY 추가
SELECT Sex
		, Pclass
		, AVG(Fare)
FROM titanic_train
GROUP BY Sex, Pclass
ORDER BY Pclass, Sex;

-- 조건문
-- CASE
-- 조건 1개
SELECT * 
	, CASE
		WHEN Age >= 60 THEN 'old' 
        ELSE 'young'
	END AS age_category
FROM titanic_train;

-- 조건 2개 이상
SELECT *
	, CASE 
		WHEN Age < 19  THEN '미성년'
        WHEN Age < 40  THEN '청년'
        WHEN Age < 65  THEN '중장년'
        ELSE '노년'
	END AS age_group
FROM titanic_train;

-- GROUP BY 추가
SELECT Sex
	, CASE 
		WHEN Age < 19  THEN '미성년'
        WHEN Age < 40  THEN '청년'
        WHEN Age < 65  THEN '중장년'
        ELSE '노년'
	END AS age_group
    , COUNT(*)
FROM titanic_train
GROUP BY Sex, age_group
ORDER BY age_group, Sex;

-- IF
SELECT * 
	, IF(Age >= 60, 'old', 'young') AS age_category
FROM titanic_train;

-- 조건 2개 이상
SELECT * 
	, IF(Age < 19, '미성년'
    , IF(Age < 40, '청년'
    , IF(Age < 65, '중장년', '노년'))) AS age_group
FROM titanic_train;