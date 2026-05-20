-- Jayden Batista
CREATE TABLE sec0607_employees AS
SELECT *
FROM l_employees
WHERE 1 = 2;

INSERT INTO sec0607_employees
SELECT *
FROM l_employees;
-- Jayden Batista
ALTER TABLE sec0609_employees
ADD CONSTRAINT sec0609_employees_pk
PRIMARY KEY (employee_id);
-- Jayden Batista
ALTER TABLE sec0611_departments
ADD manager_name VARCHAR2(50);

ALTER TABLE sec0611_departments
ADD annual_budget NUMBER(10,2);
-- Jayden Batista
ALTER TABLE sec0612_employees
MODIFY last_name VARCHAR2(50);
-- Jayden Batista
ALTER TABLE sec0613_employees
DROP COLUMN phone_number;
-- Jayden Batista
DELETE FROM sec0616_duplicate_rows
WHERE ROWID NOT IN (
    SELECT MIN(ROWID)
    FROM sec0616_duplicate_rows
    GROUP BY num_col, word_col
);
-- Jayden Batista
SELECT ROW_NUMBER() OVER (ORDER BY num_col) AS row_number,
       num_col,
       word_col
FROM sec0617_duplicate_rows;
