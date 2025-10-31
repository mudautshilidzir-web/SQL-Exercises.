----------------------------------------------------
--Q1

SELECT employee_id,
name, IFNULL(salary, 0) AS salary_with_default
FROM Employees;
------------------------------------------------
--Q2

SELECT employee_id, 
name, IFNULL(department,
'Not Assigned') AS department_name
FROM Employees;
---------------------------------------------------
--Q3

SELECT order_id,
customer_id
FROM Orders
WHERE ISNULL(customer_id);
----------------------------------------------------------------
--Q4

SELECT order_id, 
customer_id,
IFNULL(delivery_date, 'Pending') AS delivery_status
FROM Orders;
---------------------------------------------------------------------

--Q5

SELECT student_id,
name, IFNULL(grade, 0) AS final_grade
FROM Students;
--------------------------------------------------
--Q6

SELECT COUNT(*) AS not_graded_count
FROM Students
WHERE grade IS NULL;
-----------------------------------------------
--Q7

SELECT product_id,
name, 
price - IFNULL(discount, 0) AS final_price
FROM Products;
-----------------------------------------------
--Q8

SELECT COUNT(*) AS missing_email_count
FROM Customers
WHERE email IS NULL;
---------------------------------------------------------------

--Q9

SELECT customer_id,
name,
IFNULL(email, 'No Email') AS email_display
FROM Customers;
------------------------------------------------

--Q10

SELECT payment_id,
IFNULL(method, 'Unknown') AS method_display, status
FROM Payments;
---------------------------------------
--Q11

SELECT item_id,
item_name,
IFNULL(quantity, 0) AS quantity_checked
FROM Inventory;
-----------------------------------------------------

--Q12

SELECT emp_id, 
COALESCE(bonus, commission) AS first_available_reward
FROM Employees_Extra;
-------------------------------------
--Q13

SELECT COUNT(*) AS no_room_count
FROM Classes
WHERE room IS NULL;
------------------------------------------
--Q14

SELECT student_id,
date, 
IFNULL(status, 'Not Marked') AS attendance_status
FROM Attendance;
-----------------------------------------------
--Q15

SELECT account_id,
       IFNULL(account_type, 'Unknown') AS type_display,
       IFNULL(balance, 0) AS balance_checked
FROM Bank_Accounts;
--------------------------------------------------------
--Q16

SELECT project_id,
title, 
IFNULL(start_date, 'TBD') AS start_display
FROM Projects;
-----------------------------------------------------
--Q17

SELECT review_id,
product_id,
IFNULL(comment, 'No Comment') AS comment_display,
IFNULL(rating, 0) AS rating_display
FROM Reviews;
---------------------------------------------------------------------------------
--Q18

SELECT supplier_id, 
name,
COALESCE(phone, alt_phone, 'No Contact') AS contact_number
FROM Suppliers;
------------------------------------------------------------------

--Q19

SELECT user_id,
       IFNULL(theme, 'Light') AS theme_set,
       IFNULL(language, 'English') AS language_set,
       IFNULL(timezone, 'UTC') AS timezone_set
FROM User_Settings;
----------------------------------------------------------------
--Q20

SELECT record_id,
machine_id,
IFNULL(issue, 'Unknown Issue') AS issue_log,
IFNULL(technician, 'Not Assigned') AS technician_name
FROM Maintenance;
