-- A self-join is a query in which table is joined to itself
-- Self-joins are useful for comparing values in a column of rows within the same table

-- NOTE: use alias when using self-join

-- EX
SELECT tableA.col, tableB.col
FROM table AS tableA 
JOIN table AS tableB ON 
tableA.some_col = tableB.other_col
-- ////////////////////////////////////
        emp_id name report_id
to
               name rep
SELECT emp.name, report.name
FROM employees AS emp 
JOIN employees AS report ON 
emp.emp_id = report.report_id
-- ////////////////////////////////////

-- EX2
SELECT f1.title,f2.title, f1.length
FROM film AS f1
INNER JOIN film AS f2 ON
f1.film_id != f2.film_id -- matching based on length only, if its set to equal then it will match to itself
AND f1.length =f2.length
