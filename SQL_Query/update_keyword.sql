-- GENERAL Syntax
-- Update Table 
-- SET col1 = value1
--     col2 = val2,
-- WHERE 
--   condition;



Example

-- Using condition
UPDATE account
SET last_log = CURRENT_TIMESTAMP
where last_log IS NULL

-- based on another column 
UPDATE account
set last_log = created_on 

-- Using another table's values (update join)
UPDATE talbeA 
SET original_col = TableB.new_col
FROM TableB
WHERE tableA.id = TableB.id 



-- return affected rows
UPDATE account 
SET last_login = created_on 
RETURNING account_id, last_login 



-- PG Admin
UPDATE account 
SET last_log = CURRENT_TIMESTAMP

UPDATE account
SET last_log = created_on

UPDATE account_job
SET hire_date = account.created_on
FROM account
WHERE account_job.user_id = account.user_id


-- No need for: SELECT * FROM account
UPDATE account
SET last_log = CURRENT_TIMESTAMP
RETURNING email, created_on, last_log


INSERT INTO job(job_name)
VALUES
('King')
returning job_id,job_name

DELETE FROM job
Where job_name = 'King'
RETURNING job_id,job_name