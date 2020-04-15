 
SELECT customer.customer_id, customer.first_name, customer.last_name, COUNT(customer.customer_id) AS Rentals
FROM customer
JOIN rental ON customer.customer_id = rental.customer_id
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN film ON inventory.film_id = film.film_id
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON film_actor.actor_id = actor.actor_id
JOIN address ON customer.address_id = address.address_id
JOIN city ON address.city_id = city.city_id
JOIN country ON city.country_id = country.country_id
WHERE country.country = "Canada"
AND actor.first_name = "NICK"
AND actor.last_name = "WAHLBERG"
GROUP BY customer.customer_id;
