SELECT *
FROM parks_and_recreation.parks_departments;

SELECT first_name,salary,
last_name,
occupation
FROM parks_and_recreation.employee_salary;

#PEMDAS rule
SELECT first_name,
(age+10)*10+2
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;