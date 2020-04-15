 
SELECT COUNT( * ) AS Rentals
FROM rental
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN film ON inventory.film_id = film.film_id
JOIN customer ON rental.customer_id = customer.customer_id
WHERE customer.first_name = "SUSAN"
AND customer.last_name = "WILSON"
AND film.rating = "R";
