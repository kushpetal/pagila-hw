/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 */

SELECT film.film_id, film.title, language.language_id, language.name
FROM film
JOIN language ON language.language_id = film.language_id
WHERE language.name = 'English' AND (LOWER(film.title) LIKE 'k%' OR LOWER(film.title) LIKE 'q%')
ORDER BY film.title ASC




