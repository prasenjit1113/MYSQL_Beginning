-- Having vs Where

-- Both were created to filter rows of data, but they filter 2 separate things
-- Where is going to filters rows based off columns of data
-- Having is going to filter rows based off aggregated columns when grouped

SELECT gender, AVG(age) FROM employee_demographics 
WHERE AVG(age) > 35
GROUP BY gender;
-- this doesn't work because of order of operations. On the backend Where comes before the group by. So you can't filter on data that hasn't been grouped yet
-- this is why Having was created

-- Where filters rows based off columns of data
SELECT occupation, AVG(salary) FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
;

-- Having  filters rows based off aggregated columns when grouped
SELECT occupation, AVG(salary) FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 65000
;