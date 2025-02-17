/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */

SELECT film.title, film.film_id, count(film_actor.actor_id) AS actor_count
FROM film
JOIN film_actor ON film_actor.film_id = film.film_id
GROUP BY film.film_id
ORDER BY actor_count, film.title ASC


