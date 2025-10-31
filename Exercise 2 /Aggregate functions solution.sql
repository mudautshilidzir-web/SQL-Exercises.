--------------------------------------------------------------
--1. List all distinct departments

SELECT DISTINCT department
FROM students;
--------------------------------------------------------------------------------

--2. Average age per department

SELECT department,
AVG(age) AS avg_age
FROM students
GROUP BY department;
-------------------------------------------------------------------------------

--3. Departments with more than 1 student

SELECT department,
COUNT(*) AS student_count
FROM students
GROUP BY department
HAVING COUNT(*) > 1;
----------------------------------------------------------------------------------


--4. Students whose age is between 21 and 23

SELECT student_id,
name,
age,
department
FROM students
WHERE age BETWEEN 21 AND 23;
-----------------------------------------------------------------------------------

--5. Students in IT or HR older than 21

SELECT student_id,
name, 
age,
department
FROM students
WHERE department IN ('IT', 'HR') AND age > 21;
---------------------------------------------------------------------------


--6. Total credits per department > 5

SELECT department,
SUM(credits) AS total_credits
FROM courses
GROUP BY department
HAVING SUM(credits) > 5;

--------------------------------------------------------------------------------

--7. Courses that do not have 4 credits

SELECT course_id,
course_name, 
department, 
credits
FROM courses
WHERE credits <> 4;
------------------------------------------------------------------------


--8. Top 3 courses by credits (descending)

SELECT course_id,
course_name, 
credits
FROM courses
ORDER BY credits DESC
LIMIT 3;

---------------------------------------------------------------------

--9. Maximum, minimum, and average grade

SELECT MAX(grade) AS max_grade,
       MIN(grade) AS min_grade,
       AVG(grade) AS avg_grade
FROM enrollments;

-------------------------------------------------------------------------

--10. Count of enrollments per course

SELECT course_id,
COUNT(*) AS enrollment_count
FROM enrollments
GROUP BY course_id;

---------------------------------------------------------------------------


--11. Total salary and total bonus per department

SELECT department,
SUM(salary) AS total_salary,
SUM(bonus) AS total_bonus
FROM salaries
GROUP BY department;

----------------------------------------------------------------------

--12. Departments where average salary > 55,000

SELECT department,
AVG(salary) AS avg_salary
FROM salaries
GROUP BY department
HAVING AVG(salary) > 55000;
----------------------------------------------------------------------------

--13. Employees with salary + bonus > 60,000

SELECT employee_id,
name, salary,
bonus,
(salary + bonus) AS total_compensation
FROM salaries
WHERE (salary + bonus) > 60000;
---------------------------------------------------------------------------------


--14. Total and average budget per department, avg_budget > 70,000

SELECT department,
SUM(budget) AS total_budget,
AVG(budget) AS avg_budget
FROM projects
GROUP BY department
HAVING AVG(budget) > 70000;

--------------------------------------------------------------------=

--15. Projects with budget between 50,000 and 120,000, excluding Marketing

SELECT project_id,
project_name,
department,
budget
FROM projects
WHERE budget BETWEEN 50000 AND 120000
  AND department <> 'Marketing';
-----------------------------------------
