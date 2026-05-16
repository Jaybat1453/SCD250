-- Jayden Batista
SELECT first_name, last_name, dept_code
FROM l_employees
WHERE dept_code IN ('SAL', 'SHP', 'ACT');

-- Jayden Batista
SELECT employee_id, first_name, last_name
FROM l_employees
WHERE employee_id BETWEEN 201 AND 205;

-- Jayden Batista
SELECT employee_id, first_name, last_name
FROM l_employees
WHERE employee_id LIKE '%1%';

-- Jayden Batista
SELECT *
FROM l_employees
WHERE manager_id IS NULL;

-- Jayden Batista
SELECT department_name AS dept
FROM l_departments
ORDER BY department_name ASC;

-- Jayden Batista
SELECT department_name AS dept
FROM l_departments
ORDER BY 1 ASC;
