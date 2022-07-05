-- Check constraint allows us to create more customized constraints that adhere to a certain condition.
-- Such as making sure all inserted integer values fall below a certain threshhold.

General Syntax
CREATE TABLE example(
    ex_id SERIAL PRIMARY KEY,
    age SMALLINT CHECK (age>21),
    parent_age SMALLINT CHECK(parent_age>age)
);


-- pgAdmin
CREATE TABLE employees(
    emp_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHyAR(50) NOT NULL,
    birthdate DATE CHECK (birthdate > '1900-01-01'),
    hire_date DATE CHECK (hire_date > birthdate),
    salary INTEGER CHECK (salary >0)
)

INSERT INTO employees(first_name,last_name, birthdate,hire_date, salary)
VALUES
('Sandro','AMA','2003-01-07','2010-09-02',100)