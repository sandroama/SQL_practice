-- We have two staff members, with staff IDs 1 and 2. We want to give a bonus to the staff member that handled the most payments. (Most in terms of number of payments processed, not total dollar amount).

-- - How many payments did each staff member handle and who gets the bonus?

SELECT staff_id, COUNT(amount) FROM payment
GROUP BY staff_id
ORDER BY COUNT(amount)
LIMIT 2;


-- /////////
-- Corporate HQ is conducting a study on the relationship between replacement cost and a movie MPAA rating (e.g. PG, R, etc...).

-- What is the average replacement cost per MPAA rating?
SELECT rating, AVG(replacement_cost) FROM film
Group BY rating

-- //////
-- Reward top 5 customers with coupons
-- what are the customer ids of the top 5 custobers by total spend?
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;