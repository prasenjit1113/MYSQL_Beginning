SELECT * FROM employee_salary where salary>=50000;
SELECT * FROM employee_salary where salary<50000;
SELECT * FROM employee_demographics where age>30 && age<45;
SELECT last_name FROM employee_demographics where gender!="female";
SELECT * FROM employee_demographics where birth_date < '1985-01-01';
-- Here '1990-01-01' is the default data formate in MySQL.
-- There are other date formats as well that we will talk about in a later lesson.

# LIKE STATEMENT
-- two special characters a % and a _
-- % means anything
SELECT * from employee_demographics where first_name LIKE "Ma%";
SELECT * from employee_demographics where first_name LIKE "A___%";