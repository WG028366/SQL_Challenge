--# 1
SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Employees".gender, "Salaries".salary
FROM "Employees"
JOIN "Salaries"
ON "Employees".emp_no = "Salaries".emp_no;

--#2
SELECT first_name, last_name, hire_date 
FROM "Employees"
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

--#3
SELECT "Departments".dept_no, "Departments".dept_name, "Dept_Manager".emp_no, "Employees".last_name, "Employees".first_name, "Dept_Manager".from_date, "Dept_Manager".to_date
FROM "Departments"
JOIN "Dept_Manager"
ON "Departments".dept_no = "Dept_Manager".dept_no
JOIN "Employees"
ON "Dept_Manager".emp_no = "Employees".emp_no;

--#4
SELECT "Dept_Emp".emp_no, "Employees".last_name, "Employees".first_name, "Departments".dept_name
FROM "Dept_Emp"
JOIN "Employees"
ON "Dept_Emp".emp_no = "Employees".emp_no
JOIN "Departments"
ON "Dept_Emp".dept_no = "Departments".dept_no;

--#5
SELECT first_name, last_name
FROM "Employees"
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--#6
--was not working need to update

--#7
SELECT "Dept_Emp".emp_no, "Employees".last_name, "Employees".first_name, "Departments".dept_name
FROM "Dept_Emp"
JOIN "Employees"
ON "Dept_Emp".emp_no = "Employees".emp_no
JOIN "Departments"
ON "Dept_Emp".dept_no = "Departments".dept_no
WHERE "Departments".dept_name = 'Sales' 
OR "Departments".dept_name = 'Development';

--#8
SELECT last_name,
COUNT(last_name) AS "count"
FROM "Employees"
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;