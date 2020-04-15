 
SELECT category.name, COUNT( * ) AS Rentals
FROM rental
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN film_category ON inventory.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
JOIN customer ON rental.customer_id = customer.customer_id
WHERE customer.first_name = "PATRICIA"
AND customer.last_name = "JOHNSON"
GROUP BY category.name
ORDER BY COUNT( * ) DESC
LIMIT 3 ;
