-- select staff_id, customer_id, SUM(amount) FROM payment
-- group by staff_id, customer_id
-- order by customer_id

-- SELECT DATE(payment_date) FROM payment

SELECT DATE(payment_date),SUM(amount) FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC


