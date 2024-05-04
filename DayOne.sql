select count(*)
from actor
where last_name = 'Wahlberg';

select count(*)
from payment
where amount between 3.99 and 5.99;

select film_id, count(*) as film_count
from inventory
group by film_id
order by film_count desc
limit 1;

select count(*)
from customer
where last_name = 'William';

SELECT staff_id, COUNT(rental_id) AS rental_count
FROM rental
GROUP BY staff_id
ORDER BY rental_count DESC
LIMIT 1;

SELECT COUNT(DISTINCT district)
FROM address;

SELECT film_id, COUNT(actor_id) AS actor_count
FROM film_actor
GROUP BY film_id
ORDER BY actor_count DESC
LIMIT 1;

SELECT COUNT(*)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

SELECT amount, COUNT(payment.rental_id) AS rental_count
FROM payment
JOIN rental ON payment.rental_id = rental.rental_id
JOIN customer ON rental.customer_id = customer.customer_id
WHERE customer.customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(payment.rental_id) > 250;

-- Count of distinct rating categories
SELECT COUNT(DISTINCT rating) AS num_rating_categories
FROM film;

-- Rating with the most movies total
SELECT rating, COUNT(*) AS movie_count
FROM film
GROUP BY rating
ORDER BY movie_count DESC
LIMIT 1;