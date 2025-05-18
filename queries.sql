-- Sample Queries

-- 1. Select employees with name 'FAHIM'
SELECT E_ID, E_NAME, JOB_TYPE
FROM EMPLOYEE
WHERE UPPER(E_NAME) = 'FAHIM';

-- 2. Concatenate employee name and job type, and get length of name
SELECT E_NAME, CONCAT(E_NAME, JOB_TYPE) AS NAME_JOB, LENGTH(E_NAME) AS NAME_LENGTH
FROM EMPLOYEE;

-- 3. Subquery: Get employees who share job type with employee id 1004
SELECT E_NAME, JOB_TYPE
FROM EMPLOYEE
WHERE JOB_TYPE = (
  SELECT JOB_TYPE
  FROM EMPLOYEE
  WHERE E_ID = 1004
);

-- 4. Create views
CREATE VIEW empvu10 (employee_number, employee_name, job_title) AS
SELECT E_ID, E_NAME, JOB_TYPE
FROM EMPLOYEE
WITH READ ONLY;

CREATE VIEW artview (art_number, price_of_art, art_type) AS
SELECT ART_NO, ART_PRICE, CATAGORY
FROM ART
WITH READ ONLY;