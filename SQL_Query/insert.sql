-- -- INSERT allows to add rows in table

-- General Syntax
-- INSERT INTO table(col1,col2,...)
-- VALUES
-- (value1, value2,...),
-- (value1, value2,...),...;
INSERT into account(username, password, email, created_on)
VALUES
('Sandro','pass123','sandroama@gmail.com',CURRENT_TIMESTAMP)

INSERT INTO job(job_name)
VALUES
('AI Engineer')

INSERT INTO job(job_name)
VALUES
('President')

INSERT INTO account_job(user_id,job_id,hire_date)
VALUES
(1,1,CURRENT_TIMESTAMP)

SELECT * FROM account_job
