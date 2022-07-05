-- DROP allows for the complete removal of a column in a table 
-- IN PostgreSQL this will also automatically remove all of its indexes and constraints involving the column. 
-- However, it will not remove columnds used in views, triggers or stored procedures without the additional CASCADE clause. 
 

-- General Syntax 
ALTER TABLE table_name 
DROP COLUMN col_name 

-- REMOVE all dependencies 
ALTER TABLE table_name 
DROP COLUMN col_name CASCADE 

-- Check for existence to avoid error 
ALTER TABLE table_name 
DROP COLUMN IF EXISTS col_name 

-- DROP multiple Syntax 
ALTER TABLE table_name 
DROP COLUMN col_1,
DROP COLUMN col_2

-- ////

ALTER TABLE new_info
DROP COLUMN people