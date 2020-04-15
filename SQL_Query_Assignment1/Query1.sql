SELECT film.film_id, title, rating
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE rating = "PG-13"
AND category.name = "Comedy"; 
