SELECT rental_rate/replacement_cost FROM film


SELECT round(rental_rate/replacement_cost,4)*100 FROM film

SELECT 0.1 * replacement_cost AS deposit
FROM film