-- THe alter clause allows for changes to an existing table structure, such as:
-- addint, dropping or renaming columns 
-- Changing a column's data type
-- Set Default values for a column 
-- Add check constraints
-- Rename table

-- Adding
ALTER TABLE table_name 
ADD COLUMN new_col TYPE 
-- Alter constraints
ALTER TABLE table_name 
ALTER COLUMN col_name 
SET DEFAULT value  -- SET NOT NULL/ADD CONSTRAINT constraint_name
-- 


CREATE TABLE information(
    info_id SERIAL PRIMARY KEY,
    title VARCHAR(500) NOT NULL,
    person VARCHAR(50) NOT NULL UNIQUE
)

ALTER TABLE information
RENAME TO new_info

ALTER TABLE new_info
RENAME COLUMN person to people

ALTER TABLE new_info
ALTER COLUMN people DROP NOT NULL
INSERT INTO new_info(title)
VALUES
('Minions 22')