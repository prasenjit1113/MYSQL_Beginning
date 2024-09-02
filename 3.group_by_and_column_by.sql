SELECT * FROM employee_demographics;
-- GROUP BY SHOWS ONLY THE UNIQUE DATAS		
-- when you use group by  you have to have the same columns you're grouping on in the group by statement
SELECT gender FROM employee_demographics GROUP BY gender;
SELECT occupation FROM employee_salary GROUP BY occupation;

-- when we group by 2 columns we now have a row for both occupation and salary because salary is different
SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;

-- now the most useful reason we use group by is so we can perform out aggregate functions on them
SELECT gender, AVG(age) FROM employee_demographics GROUP BY gender;
SELECT salary FROM employee_salary GROUP BY salary;
SELECT gender, MIN(age), MAX(age), COUNT(age),AVG(age)
FROM employee_demographics
GROUP BY gender
;


-- The ORDER BY clause:
-------------------------
#The ORDER BY keyword is used to sort the result-set in ascending or descending order.
#The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.
SELECT first_name,salary FROM employee_salary ORDER BY salary;
SELECT first_name,salary FROM employee_salary ORDER BY first_name DESC;

#Now we can also do multiple columns like this:
SELECT *
FROM employee_demographics
ORDER BY gender DESC, age DESC;
