SELECT customer_id AS rental_price
FROM payment
-- //////
SELECT SUM(amount) AS net_revenue
FROM payment; 

-- ///
SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id
HAVIN SUM(amount) >100

-- //////
SELECT customer_id, amount AS new_name 
FROM payment
GROUP BY customer_id
HAVIN amount >100