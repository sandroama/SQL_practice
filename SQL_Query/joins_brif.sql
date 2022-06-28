id name       id  name
-- ----       --  ----
1  Pirate     1   Rutabaga
2  Monkey     2   Pirate
3  Ninja      3   Darth Vader
4  Spaghetti  4   Ninja
TABLE A          TABLE B

-- INNER JOIN --
SELECT * FROM TableA
INNER JOIN TableB
ON TableA.name = TableB.name

-- FULL outer join --
SELECT * FROM TableA
FULL OUTER JOIN TableB
ON TableA.name = TableB.name

--example
SELECT * FROM Registrations FULL OUTER JOIN Logins
ON Registrations.name = Logins.name
Where Registrations.reg_id IS null OR Logins.log_id IS null

-- ex2
SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS null 
OR payment.customer_id IS null

-- Full outer join produces the set of all records in Table A and Table B, with matching records from both sides where available. If there is no match, the missing side will contain null.

-- LEFT outer join --
SELECT * FROM TableA
LEFT OUTER JOIN TableB
ON TableA.name = TableB.name

-- Left outer join produces a complete set of records from Table A, with the matching records (where available) in Table B. If there is no match, the right side will contain null.

-- Only Table A and no join
SELECT * FROM TableA
LEFT OUTER JOIN TableB
ON TableA.name = TableB.name
WHERE TableB.id IS null

-- To produce the set of records only in Table A, but not in Table B, we perform the same left outer join, then exclude the records we don't want from the right side via a where clause.

-- Unique
SELECT * FROM TableA
FULL OUTER JOIN TableB
ON TableA.name = TableB.name
WHERE TableA.id IS null
or TableB.id IS null
-- To produce the set of records unique to Table A and Table B, we perform the same full outer join, then exclude the records we don't want from both sides via a where clause.