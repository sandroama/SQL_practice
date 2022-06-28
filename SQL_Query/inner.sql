SELECT * FROM TableB
INNER JOIN TableA
ON TableA.col_match = TableB.col_match
-- //////
SELECT * FROM Registrations
INNER JOIN Logins
ON Registrations.name=Logins.name
-- //////
SELECT * FROM payment
INNER JOIN customer
ON payment.customer_id = customer_id
-- //////
SELECT payment_id, payment.customer_id FROM payment
INNER JOIN customer
ON payment.customer_id=customer.customer_id
-- //////
SELECT payment_id, payment.customer.id, first_name
FROM payment
INNER JOIN customer
ON payment.customer_id=customer.customer_id