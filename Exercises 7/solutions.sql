-----------------------------------
--Q1

SELECT customer_name
FROM online_sales
UNION
SELECT customer_name
FROM store_sales;
-------------------------------------------

--Q2

SELECT customer_name 
FROM online_sales
UNION ALL
SELECT customer_name
FROM store_sales;
------------------------------------------------

--Q3

SELECT sale_date
FROM online_sales
UNION
SELECT sale_date
FROM store_sales
ORDER BY sale_date ASC;
-----------------------------------------
--Q4

SELECT sale_date 
FROM online_sales
UNION ALL
SELECT sale_date 
FROM store_sales;
--------------------------------------------------
--Q5

SELECT customer_name,
amount
FROM online_sales
WHERE amount > 250
UNION
SELECT customer_name,
amount
FROM store_sales
WHERE amount > 250;
-----------------------------------------------------------
--Q6

SELECT customer_name,
amount, 
sale_date 
FROM online_sales
UNION ALL
SELECT customer_name,
amount, 
sale_date 
FROM store_sales;
-------------------------------------------------------

--Q7

SELECT customer_name,
amount,
sale_date,
'Online' AS source FROM online_sales
UNION ALL
SELECT customer_name, 
amount,
sale_date,
'Store' AS source 
FROM store_sales;
---------------------------------------------
--Q8

SELECT customer_name, 
COUNT(*) AS occurrences
FROM ( SELECT customer_name FROM online_sales
UNION ALL SELECT customer_name FROM store_sales) AS combined
GROUP BY customer_name
HAVING COUNT(*) > 1;
-----------------------------------------------
--Q9

SELECT SUM(amount) AS total_amount
FROM (SELECT amount FROM online_sales UNION ALL SELECT amount FROM store_sales) AS combined;
-----------------------------------------------------
SELECT customer_name, SUM(amount) AS total_spent
FROM ( SELECT customer_name, amount FROM online_sales UNION ALL
    SELECT customer_name, amount FROM store_sales) AS combined
GROUP BY customer_name;
