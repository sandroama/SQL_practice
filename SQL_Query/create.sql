--         - GENERAL Syntax - 
-- CREATE TABLE table_name (
--     column_name TYPE column_constraint,
--     column_name TYPE column_constraint,
--     table_constraint table_constraint
-- ) INHERITS existing_table_name;

-- Example
CREATE TABLE players(
    player_id SERIAL PRIMARY KEY,
    age SMALLINT column_constraint NOT NULL
)

--////

   CREATE TABLE account(
       user_id SERIAL PRIMARY KEY,
       username VARCHAR(50) UNIQUE NOT NULL,
       password VARCHAR(50) NOT NULL,
       email VARCHAR(50) UNIQUE NOT NULL,
       created_on TIMESTAMP NOT NULL,
       last_log TIMESTAMP 
       
   
   )

   CREATE TABLE job_table(
    user_id INTEGER REFERENCES account(user_id),
    job_id INTEGER REFERENCES job(job_id),
    hire_date TIMESTAMP
)