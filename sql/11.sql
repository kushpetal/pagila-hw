/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */

SELECT film.film_id, film.title, count(inventory_id) AS count
FROM film
JOIN inventory ON film.film_id = inventory.film_id
WHERE LOWER(film.title) LIKE 'h%'
GROUP BY film.film_id
ORDER BY film.title DESC




