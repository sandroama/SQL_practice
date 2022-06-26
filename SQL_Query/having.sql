SELECT company, SUM(sales)
FROM finance_table
WHERE company != 'Google'
GROUP BY company Having SUM(sales)>1000

-- Having allows to use the aggregate result as a filter along with a group by
-- ------------------------------------------
SELECT customer_id, SUM(amount) FROM payment
WHERE customer_id NOT IN (184,87,477)
GROUP BY customer_id
HAVING SUM(amount) < 150

--
SELECT store_id, COUNT(customer_id) FROM customer
GROUP BY store_id

-- more than 300 customer stores
SELECT store_id, COUNT(*) FROM customer
GROUP BY store_id
HAVING COUNT(*) > 300