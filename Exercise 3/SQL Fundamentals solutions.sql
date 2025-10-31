
-------------------------------------------------------
--Q1
SELECT 
    product_name,
    price,
    CASE
        WHEN price > 1000 THEN 'Expensive'
        WHEN price BETWEEN 100 AND 1000 THEN 'Mid-range'
        ELSE 'Budget'
    END AS price_category
FROM products;
-----------------------------------------------------------------
--Q2
SELECT 
    customer_name,
    amount,
    CASE
        WHEN amount >= 1000 THEN 'High Value'
        WHEN amount BETWEEN 500 AND 999.99 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS order_value_category
FROM orders;
---------------------------------------------------------------
 
--Q3.
SELECT 
    emp_name,
    department,
    salary,
    CASE
        WHEN department = 'IT' AND salary > 80000 THEN 'Senior IT'
        WHEN department = 'HR' AND salary > 55000 THEN 'Experienced HR'
        ELSE 'Staff'
    END AS position_level
FROM employees;
-------------------------------------------------------------------

--Q4

SELECT 
    student_name,
    score,
    CASE
        WHEN score >= 90 THEN 'A'
        WHEN score BETWEEN 80 AND 89 THEN 'B'
        WHEN score BETWEEN 70 AND 79 THEN 'C'
        WHEN score BETWEEN 60 AND 69 THEN 'D'
        ELSE 'F'
    END AS grade
FROM students;
-------------------------------------------------------------------- 

--Q5
SELECT 
    delivery_id,
    delivery_time_minutes,
    CASE
        WHEN delivery_time_minutes <= 30 THEN 'Fast'
        WHEN delivery_time_minutes BETWEEN 31 AND 60 THEN 'On Time'
        ELSE 'Late'
    END AS performance
FROM deliveries;
---------------------------------------------------------------

--Q6
SELECT 
    issue_type,
    priority,
    CASE priority
        WHEN 3 THEN 'High'
        WHEN 2 THEN 'Medium'
        WHEN 1 THEN 'Low'
    END AS priority_label
FROM tickets;
---------------------------------------------------------------

--Q7
SELECT 
    student_id,
    (days_present * 100.0 / total_days) AS attendance_percentage,
    CASE
        WHEN (days_present * 100.0 / total_days) >= 90 THEN 'Excellent'
        WHEN (days_present * 100.0 / total_days) BETWEEN 75 AND 89 THEN 'Good'
        ELSE 'Needs Improvement'
    END AS attendance_status
FROM attendance;
------------------------------------------------------------------------------------

--Q8
SELECT 
    product_id,
    stock_qty,
    CASE
        WHEN stock_qty = 0 THEN 'Out of Stock'
        WHEN stock_qty BETWEEN 1 AND 5 THEN 'Low Stock'
        ELSE 'In Stock'
    END AS stock_status
FROM products_inventory;
----------------------------------------------------------

--Q9
SELECT 
    subject,
    enrolled_students,
    CASE
        WHEN enrolled_students >= 25 THEN 'Large'
        WHEN enrolled_students BETWEEN 10 AND 24 THEN 'Medium'
        ELSE 'Small'
    END AS class_size_category
FROM classes;
-------------------------------------------------------------------------------------

--Q10
SELECT 
    payment_id,
    payment_method,
    amount,
    CASE
        WHEN payment_method = 'Cash' AND amount >= 200 THEN 'Eligible for Discount'
        ELSE 'Not Eligible'
    END AS discount_eligibility
FROM payments;
