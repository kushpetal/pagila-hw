/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */

SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(payment.amount) AS sum
FROM customer
JOIN payment ON payment.customer_id = customer.customer_id
GROUP BY customer.customer_id
ORDER BY customer.last_name ASC




