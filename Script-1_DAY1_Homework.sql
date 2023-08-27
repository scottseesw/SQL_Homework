select last_name
from actor
where last_name like 'W__%rg';


select count(*) as payment_id
from payment
where amount between 3.99 and 5.99;

select  film_id 
from inventory
group by film_id;

select last_name
from customer
where last_name like 'W__%ms';


select district, count(district) as num_districts
from address
group by district
order by num_districts desc


select staff_id, count(rental_id) AS num_rentals_sold
from rental
group by staff_id
order by num_rentals_sold DESC
limit 1;

select film_id, count(actor_id) as num_actors
from film_actor 
group by film_id 
order by num_actors desc 
limit 1;


select  COUNT(*) AS num_customers
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';


SELECT p.amount, COUNT(*) AS num_payments
FROM payment p
JOIN rental r ON p.rental_id = r.rental_id
JOIN customer c ON r.customer_id = c.customer_id
WHERE c.customer_id BETWEEN 380 AND 430 
GROUP BY p.amount 
HAVING COUNT(*) > 250;

select rating, count(rating) as num_movies
from film
group by rating
order by num_movies desc;











