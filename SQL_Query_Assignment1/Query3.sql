 
SELECT customer.customer_id, customer.first_name, customer.last_name, count( customer.customer_id ) AS Rentals
FROM customer
JOIN rental ON customer.customer_id = rental.customer_id
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN film_category ON inventory.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
JOIN address ON customer.address_id = address.address_id
JOIN city ON address.city_id = city.city_id
JOIN country ON city.country_id = country.country_id
WHERE category.name = "Sports"
AND country.country = "India"
GROUP BY customer.customer_id;
