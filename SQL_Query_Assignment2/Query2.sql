 
SELECT COUNT( rental.rental_id ) AS Total_Rentals
FROM rental
JOIN staff s1 ON rental.staff_id = s1.staff_id
JOIN store ON s1.store_id = store.store_id
JOIN staff s2 ON store.manager_staff_id = s2.staff_id
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN film ON inventory.film_id = film.film_id
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE s2.first_name = "Jon"
AND s2.last_name = "Stephens"
AND category.name = "Sci-Fi"
ORDER BY rental.rental_id;
