-- 데이터 연결하기
-- 1. LEFT JOIN 
use titanic;

select * 
from job;

select * 
from titanic_train;

-- 승객과 관련된 모든 데이터 추출
SELECT *
FROM titanic_train AS tt
	LEFT JOIN job AS j ON tt.PassengerId = j.id;

-- 직업이 기재되어 있는 사람들만 추출
SELECT *
FROM titanic_train AS tt
	LEFT JOIN job AS j ON tt.PassengerId = j.id
WHERE j.job IS NOT NULL;

-- 성인(18세이상)이면서 직업이 기재되어 있는 사람들의 id, Age, job만 추출
SELECT j.id
		, tt.Age
		, j.job
FROM titanic_train AS tt
	LEFT JOIN job AS j ON tt.PassengerId = j.id
WHERE j.job IS NOT NULL
	AND tt.Age >= 18;

-- 2. RIGHT JOIN
-- 승객과 관련된 모든 데이터 추출
SELECT *
FROM job AS j
	RIGHT JOIN titanic_train AS tt ON j.id = tt.PassengerId;

-- SELF JOIN
-- job 테이블에서 자식과 부모가 같은 직업인 경우 확인
SELECT j2.id AS child
		, j2.job AS child_job
        , j1.id AS parents
        , j1.job AS parents_job
FROM job AS j1
	INNER JOIN job AS j2 ON j2.parents_id = j1.id
WHERE j2.job = j1.job;

-- 매출 분석
-- onlinesales 테이블의 일별 매출액 계산
USE e_commerce;

SELECT date
		, ROUND(SUM(quantity * avg_cost), 2) AS revenue_daily
FROM onlinesales
GROUP BY date;

-- onlinesales 테이블의 일별 매출액, PU, ARPPU 계산
SELECT date
		, ROUND(SUM(quantity * avg_cost), 2) AS revenue_daily
        , COUNT(DISTINCT customer_id) AS PU
        , ROUND(SUM(quantity * avg_cost) / COUNT(DISTINCT customer_id), 2) AS ARPPU
FROM onlinesales
GROUP BY date;

-- 일별, 고객별 주문 금액 및 주문수
SELECT date
		, customer_id
		, ROUND(SUM(quantity * avg_cost), 2) AS revenue_per_customer
        , COUNT(DISTINCT order_id) AS order_cnts
FROM onlinesales
GROUP BY customer_id, date
ORDER BY date, customer_id;

-- 지역별 매출액, PU, 1인당 매출액을 1인당 매출액 순위별로 추출
SELECT c.local
		, ROUND(SUM(o.quantity * o.avg_cost), 2) AS local_revenue
        , COUNT(DISTINCT o.customer_id) AS PU
        , ROUND(SUM(o.quantity * o.avg_cost) / COUNT(DISTINCT o.customer_id), 2) AS LRPPU
FROM customer AS c
	INNER JOIN onlinesales AS o ON c.customer_id = o.customer_id
GROUP BY c.local
ORDER BY LRPPU DESC;

-- Chicago 지역에서 제품 카테고리별 주문수, 주문금액
SELECT o.category
		, COUNT(DISTINCT o.order_id) AS order_cnts
        , ROUND(SUM(o.quantity * o.avg_cost), 2) AS revenue_category
FROM customer AS c
	INNER JOIN onlinesales AS o ON c.customer_id = o.customer_id
WHERE c.local = 'Chicago'
GROUP BY o.category
ORDER BY revenue_category DESC;