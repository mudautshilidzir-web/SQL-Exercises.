---------------------------------------
--Q1
SELECT A.student_id,
A.student_name,
B.grade
FROM students A
INNER JOIN grades B
    ON A.student_id = B.student_id;
---------------------------------------------------

--Q2

SELECT A.emp_id, 
A.emp_name, 
B.dept_name
FROM employees A
LEFT JOIN departments B
    ON A.emp_id = B.emp_id;
    -----------------------------------------------------------
--Q3

SELECT A.product_id,
A.product_name,
B.quantity
FROM products A
FULL OUTER JOIN sales B
ON A.product_id = B.product_id;
----------------------------------------------------------------

--Q4

SELECT A.order_id,
A.customer_id,
A.amount, 
B.customer_name,
       CASE
           WHEN B.customer_id IS NULL THEN 'New Customer'
           ELSE 'Returning Customer'
       END AS customer_type
FROM orders A
LEFT JOIN customers B
    ON A.customer_id = B.customer_id;   
    -----------------------------------------------------
--Q5

SELECT A.region_id,
A.region_name,
COALESCE(SUM(s.amount), 0) AS total_sales
FROM regions A
LEFT JOIN sales B
    ON A.region_id = B.region_id
GROUP BY A.region_id,
A.region_name;
----------------------------------------------------------
--Q6

SELECT A.student_id,
B.name,
B.days_present,
       CASE
           WHEN B.days_present >= 15 THEN 'Excellent'
           WHEN B.days_present BETWEEN 10 AND 14 THEN 'Needs Improvement'
           ELSE 'Poor Attendance'
       END AS attendance_status
FROM students A
LEFT JOIN attendance B
    ON A.student_id = B.student_id;
-------------------------------------------------------------------------    
--Q7

SELECT A.project_id, 
A.name, 
COUNT(B.task_id) AS task_count
FROM projects A
INNER JOIN tasks B
    ON A.project_id = B.project_id
GROUP BY A.project_id, A.name;

-------------------------------------------------------------

--Q8

SELECT COALESCE(A.cust_id, B.cust_id) AS cust_id,
       A.order_total,
       B.return_total,
       CASE
           WHEN A.return_total IS NULL THEN 'No Return'
           ELSE 'Returned'
       END AS return_status
FROM orders A
FULL OUTER JOIN returns B
    ON A.cust_id = B.cust_id
WHERE COALESCE(A.order_total, 0) > 100;
------------------------------------------------------
--Q9

SELECT A.user_id,
A.name, 
COUNT(l.login_date) AS login_count
FROM users A
LEFT JOIN logins B
    ON A.user_id = B.user_id
GROUP BY A.user_id, A.name
ORDER BY login_count DESC;
---------------------------------------------------------------------

--Q10

SELECT A.teacher_id,
A.teacher_name,
COALESCE(B.subject_name, 'No Subject Assigned') AS subject_name
FROM teachers B
LEFT JOIN subjects A
    ON B.teacher_id = A.teacher_id
ORDER BY B.teacher_name ASC;
-------------------------------
