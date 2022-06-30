-- Date Types:
-- Time - Contains only Time
-- Date - Contains only date
-- TIMESTAMP - Date and time
-- TIMESTAMPPTZ - Date and time and timezone
SHOW ALL 
SHOW TIMEZONE -- America/New_York
SELECT NOW() -- 2022-06-30 01:57:18.706167-04
SELECT TIMEOFDAY() -- Thu Jun 30 01:58:17.762522 2022 EDT
SELECT CURRENT_TIME -- 01:58:38.629295-04:00
SELECT CURRENT_DATE -- 2022-06-30


--
EXTRACT(YEAR FROM date_col)
AGE(date_col)
TO_CHAR(date_col)
--
SELECT EXTRACT(YEAR FROM payment_date) AS year 
FROM payment 

SELECT AGE(payment_date)
FROM payment

SELECT TO_CHAR(payment_date, 'MONTH YYYY')
FROM payment
----------------------------------------------------

-- During which months did payments occur?
-- Format your answer to return back the full month name
SELECT DISTINCT(TO_CHAR(payment_date,'MONTH')) AS month
FROM payment

-- How many payments occured on a Monday? 
SELECT COUNT(*) FROM payment 
WHERE EXTRACT(dow FROM payment_date)=1