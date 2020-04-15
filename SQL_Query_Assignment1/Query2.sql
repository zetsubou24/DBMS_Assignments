SELECT film.title, count( film.title ) AS Rentals
FROM film
JOIN inventory ON film.film_id = inventory.film_id
JOIN rental ON inventory.inventory_id = rental.inventory_id
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE category.name = "Horror"
GROUP BY film.title
ORDER BY count( film.title ) DESC
LIMIT 3 ; 
