
SELECT actor.first_name, actor.last_name, COUNT(*) AS NoOfFilms
FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
JOIN film ON film_actor.film_id = film.film_id
WHERE actor.first_name = "SEAN"
AND actor.last_name = "WILLIAMS"; 
