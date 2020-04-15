 
SELECT COUNT( * ) AS Total_Documentaries
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE category.name = "Documentary"
AND film.special_features LIKE "%Deleted Scenes%";
