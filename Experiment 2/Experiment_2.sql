DROP TABLE IF EXISTS employee;

CREATE TABLE employee(
	emp_id NUMERIC PRIMARY KEY,
	emp_name VARCHAR(50),
	department VARCHAR(50),
	salary NUMERIC(10,2)
);

INSERT INTO employee VALUES
	(725, 'Punya Arora', 'Sales', 25000.00),
	(131, 'Arnav Prajapati', 'HR', 32000.00),
	(732, 'Akshveer Singh Lamba', 'Management', 35000.00),
	(735, 'Anuj Kumar', 'Accounts', 30000.00);
	
SELECT * FROM employee;

SELECT department, AVG(salary) AS avg_salary
FROM employee
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM employee
GROUP BY department
HAVING AVG(salary) > 20000.00


SELECT department , AVG(salary) AS avg_salary
FROM employee
WHERE salary > 30000.00
GROUP BY department
HAVING AVG(salary) > 20000.00
ORDER BY avg_salary DESC