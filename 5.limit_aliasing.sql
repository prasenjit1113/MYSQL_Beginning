-- LIMIT and ALIASING

-- Limit is just going to specify how many rows you want in the output

SELECT *
FROM employee_demographics
ORDER BY age
LIMIT 5;

SELECT *
FROM employee_demographics
ORDER BY age
LIMIT 3,1;
-- this now says start at position 3 and take 2 rows after that
-- this is not used a lot in my opinion


-- ALIASING
-- aliasing is just a way to change the name of the column (for the most part)
-- it can also be used in joins, but we will look at that in the intermediate series
SELECT gender, AVG(age) AS PROO
FROM employee_demographics
GROUP BY gender
;
-- although we don't actually need it, but it's more explicit which I usually like
SELECT gender, AVG(age) PROO
FROM employee_demographics
GROUP BY gender
;