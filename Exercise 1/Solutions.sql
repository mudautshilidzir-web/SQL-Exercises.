------------------------------------------
--1. SELECT Statement
--Write a SQL query to retrieve all columns from the employees table

SELECT *
FROM employees;
--------------------------------------------
--2. SELECT DISTINCT Statement – Find all unique departments:

SELECT DISTINCT department
FROM employees;
---------------------------------------
--3. ORDER BY Statement – Retrieve first and last names ordered by salary descending:

SELECT first_name, last_name
FROM employees
ORDER BY salary DESC;
----------------------------------------------
--4. LIMIT Statement – Top 5 highest-paid employees:

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;
--------------------------------------------

--5. WHERE Statement – Employees in IT department:

SELECT *
FROM employees
WHERE department = 'IT';
------------------------------------------------------

--6. AND Statement – Employees in Finance with salary > 58,000:

SELECT *
FROM employees
WHERE department = 'Finance' AND salary > 58000;

------------------------------------------------------
--7. OR Statement – Employees in HR or Marketing:


SELECT *
FROM employees
WHERE department = 'HR' OR department = 'Marketing';
------------------------------------------------
8. NOT Statement – Employees not in IT:

SELECT *
FROM employees
WHERE department <> 'IT';
----------------------------------------

--9. IN Statement – Employees in HR, IT, or Finance:

SELECT *
FROM employees
WHERE department IN ('HR', 'IT', 'Finance');
-----------------------------------------------------
--10. Combining Conditions – IT employees with salary 50,000 in New York:

SELECT *
FROM employees
WHERE department = 'IT' AND salary > 50000 AND city = 'New York';
-----------------------------------------------------------------------------
--11. Combining WHERE, AND, and ORDER BY – Finance or Marketing, salary > 52,000, ordered by salary descending:

SELECT first_name, last_name
FROM employees
WHERE (department = 'Finance' OR department = 'Marketing') 
  AND salary > 52000
ORDER BY salary DESC;
--------------------------------------------------------------------
--12. Combining SELECT DISTINCT, WHERE, and IN – Unique cities excluding IT and HR:

SELECT DISTINCT city
FROM employees
WHERE department NOT IN ('IT', 'HR');
-------------------------------------------------------------------------------
--13. Combining WHERE, NOT, AND, and ORDER BY – Not Finance, salary > 50,000, ordered by hire_date ascending:

SELECT *
FROM employees
WHERE department <> 'Finance' AND salary > 50000
ORDER BY hire_date ASC;
--------------------------------------------------------------------------------------
--14. Combining WHERE, OR, IN, and LIMIT – First 3 employees in Chicago or Los Angeles and in IT or Marketing:


SELECT *
FROM employees
WHERE city IN ('Chicago', 'Los Angeles')
  AND department IN ('IT', 'Marketing')
LIMIT 3;
