-- EDA
-- customer 테이블 데이터 10개 확인
SELECT *
FROM customer
LIMIT 10;

-- onlinesales 테이블 데이터 10개 확인
SELECT *
FROM onlinesales
LIMIT 10;

-- onlinesales 테이블의 'USER_0541' 고객의 주문횟수는?
SELECT COUNT(order_id)
	, COUNT(DISTINCT order_id) 
FROM onlinesales
WHERE customer_id = 'USER_0541';

-- onlinesales 테이블의 'USER_0541' 고객의 주문한 총금액은?
SELECT SUM(quantity * avg_cost) AS sales
FROM onlinesales
WHERE customer_id = 'USER_0541';

-- onlinesales 테이블의 'USER_0541' 고객의 마지막 주문일은?
SELECT MIN(date)
	, MAX(date)
FROM onlinesales
WHERE customer_id = 'USER_0541';

-- onlinesales 테이블의 결측치 확인해보기
SELECT COUNT(*)
	, COUNT(customer_id)
	, COUNT(order_id)
    , COUNT(date)
    , COUNT(product_id)
    , COUNT(category)
    , COUNT(quantity)
    , COUNT(shipping_fee)
    , COUNT(coupon_status)
FROM onlinesales;

-- onlinesales 테이블의 데이터 수집 기간 확인
SELECT MIN(date)
	, MAX(date)
FROM onlinesales;

-- RFM 고객 세분화 분석
-- onlinesales 테이블의 고객별 Recency 계산
-- 19년 12월 주문까지는 'recent', 그 이전은 'past'
SELECT customer_id
	, MAX(date) AS last_order_date
    , CASE 
		WHEN MAX(date) > '2019-12-01' THEN 'recent'
        ELSE 'past'
	END AS Recency
FROM onlinesales
GROUP BY customer_id;

-- onlinesales 테이블의 고객별 Frequency 계산
-- 주문횟수가 30번 이상이면 'high', 아니면 'low'
SELECT customer_id
	, COUNT(DISTINCT order_id) AS cnts_order
    , CASE 
		WHEN COUNT(DISTINCT order_id) >= 30 THEN 'high'
        ELSE 'low'
	END AS Frequency
FROM onlinesales
GROUP BY customer_id;

-- onlinesales 테이블의 고객별 Monetary 계산
-- 총 비용이 $1500 이상이면 'high', 아니면 'low'
SELECT customer_id
	, SUM(quantity * avg_cost) AS sum_sales
    , CASE 
		WHEN SUM(quantity * avg_cost) >= 1500 THEN 'high'
        ELSE 'low'
	END AS Monetary
FROM onlinesales
GROUP BY customer_id;

-- 서브쿼리용
SELECT customer_id
	, MAX(date) AS last_order_date
	, COUNT(DISTINCT order_id) AS cnts_order
    , SUM(quantity * avg_cost) AS sum_sales
FROM onlinesales
GROUP BY customer_id;

-- Recency별 고객 수 확인
SELECT CASE 
		WHEN o.last_order_date > '2019-12-01' THEN 'recent'
        ELSE 'past'
	END AS Recency
    , COUNT(customer_id) AS customers
FROM (SELECT customer_id
			, MAX(date) AS last_order_date
			, COUNT(DISTINCT order_id) AS cnts_order
			, SUM(quantity * avg_cost) AS sum_sales
		FROM onlinesales
		GROUP BY customer_id) AS o
GROUP BY Recency
ORDER BY Recency;


-- Frequency별 고객 수 확인
SELECT CASE 
		WHEN o.cnts_order >= 30 THEN 'high'
        ELSE 'low'
	END AS Frequency
    , COUNT(customer_id) AS customers
FROM (SELECT customer_id
			, MAX(date) AS last_order_date
			, COUNT(DISTINCT order_id) AS cnts_order
			, SUM(quantity * avg_cost) AS sum_sales
		FROM onlinesales
		GROUP BY customer_id) AS o
GROUP BY Frequency
ORDER BY Frequency;

-- Monetary별 고객 수 확인
SELECT CASE 
		WHEN o.sum_sales >= 1500 THEN 'high'
        ELSE 'low'
	END AS Monetary
    , COUNT(customer_id) AS customers
FROM (SELECT customer_id
			, MAX(date) AS last_order_date
			, COUNT(DISTINCT order_id) AS cnts_order
			, SUM(quantity * avg_cost) AS sum_sales
		FROM onlinesales
		GROUP BY customer_id) AS o
GROUP BY Monetary
ORDER BY Monetary;

-- RFM 고객 세분화
SELECT CASE 
		WHEN o.last_order_date > '2019-12-01' THEN 'recent'
        ELSE 'past'
	END AS Recency
	, CASE 
		WHEN o.cnts_order >= 30 THEN 'high'
        ELSE 'low'
	END AS Frequency
    , CASE 
		WHEN o.sum_sales >= 1500 THEN 'high'
        ELSE 'low'
	END AS Monetary
    , COUNT(customer_id) AS customers
FROM (SELECT customer_id
			, MAX(date) AS last_order_date
			, COUNT(DISTINCT order_id) AS cnts_order
			, SUM(quantity * avg_cost) AS sum_sales
		FROM onlinesales
		GROUP BY customer_id) AS o
GROUP BY Recency, Frequency, Monetary
ORDER BY Recency, Frequency, Monetary;

-- 피봇 테이블
-- 1. 분기별로 order_id 확인
SELECT order_id
	, CASE WHEN date BETWEEN '2019-01-01' AND '2019-03-31' THEN order_id END AS Q1
	, CASE WHEN date BETWEEN '2019-04-01' AND '2019-06-30' THEN order_id END AS Q2
	, CASE WHEN date BETWEEN '2019-07-01' AND '2019-09-30' THEN order_id END AS Q3
	, CASE WHEN date BETWEEN '2019-10-01' AND '2019-12-31' THEN order_id END AS Q4 	
FROM onlinesales;

-- 2. 전체 주문수와 분기별 주문수 확인
SELECT COUNT(DISTINCT order_id) AS cnt_orders
	, COUNT(DISTINCT CASE WHEN date BETWEEN '2019-01-01' AND '2019-03-31' THEN order_id END) AS Q1_cnts
	, COUNT(DISTINCT CASE WHEN date BETWEEN '2019-04-01' AND '2019-06-30' THEN order_id END) AS Q2_cnts
	, COUNT(DISTINCT CASE WHEN date BETWEEN '2019-07-01' AND '2019-09-30' THEN order_id END) AS Q3_cnts
	, COUNT(DISTINCT CASE WHEN date BETWEEN '2019-10-01' AND '2019-12-31' THEN order_id END) AS Q4_cnts
FROM onlinesales;

-- 3. 쿠폰 상태별 총 주문수와 분기별 주문수 확인
SELECT coupon_status
	, COUNT(DISTINCT order_id) AS Total
	, COUNT(DISTINCT CASE WHEN date BETWEEN '2019-01-01' AND '2019-03-31' THEN order_id END) AS Q1_cnts
	, COUNT(DISTINCT CASE WHEN date BETWEEN '2019-04-01' AND '2019-06-30' THEN order_id END) AS Q2_cnts
	, COUNT(DISTINCT CASE WHEN date BETWEEN '2019-07-01' AND '2019-09-30' THEN order_id END) AS Q3_cnts
	, COUNT(DISTINCT CASE WHEN date BETWEEN '2019-10-01' AND '2019-12-31' THEN order_id END) AS Q4_cnts
FROM onlinesales
GROUP BY coupon_status;

-- 데이터 연결하기
-- 위아래로 연결하기(UNION, UNION ALL) 
-- test 데이터에는 Surviced가 없어 UNION을 쓸 수 없음
USE titanic;

SELECT *
FROM titanic_train

UNION ALL

SELECT *
FROM titanic_train;

-- 스키마명 변경(-이 있어서 계속 오류 발생)
CREATE DATABASE e_commerce;

RENAME TABLE `e-commerce`.customer TO e_commerce.customer;
RENAME TABLE `e-commerce`.discount TO e_commerce.discount;
RENAME TABLE `e-commerce`.marketing TO e_commerce.marketing;
RENAME TABLE `e-commerce`.onlinesales TO e_commerce.onlinesales;
RENAME TABLE `e-commerce`.tax TO e_commerce.tax;

DROP DATABASE `e-commerce`;

-- INNER JOIN 
USE e_commerce;

SELECT *
FROM customer AS c
	INNER JOIN onlinesales AS o ON c.customer_id = o.customer_id;

-- 성별이 여성인 데이터만 추출
SELECT *
FROM customer AS c
	INNER JOIN onlinesales AS o ON c.customer_id = o.customer_id
WHERE sex = 'female';

-- 성별이 여성인 고객의 고객id, 성별, 지역, 제품id, 제품분류, 쿠폰 상태, 할인율 추출하세요.
SELECT c.customer_id
	, c.sex
	, c.local
    , o.product_id
    , o.category
    , o.coupon_status
    , d.discount_rate
FROM customer AS c
	INNER JOIN onlinesales AS o ON o.customer_id = c.customer_id
    INNER JOIN discount AS d ON d.category = o.category
WHERE sex = 'female'










