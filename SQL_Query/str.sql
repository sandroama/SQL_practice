SELECT LENGTH(first_name) FROM customer 

SELECT upper(first_name) || ' ' || last_name || ' ' ||  email as personal_info
FROM customer


-- SELECT RAND()*(b-a)+a;
SELECT RAND()*(25-10)+10;
-- The formula above would generate a random decimal number between 10 and 25, not inclusive.

-- SELECT LOWER(left(first_name,1)) || TO_CHAR(ROUND(RAND()*(10-1)+1)) || LOWER(last_name) || '@gmail.com'
-- FROM customer