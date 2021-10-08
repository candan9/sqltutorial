select count(*) from film where length > (select avg(length) from film) // SORU 1

select count(*) from film where rental_rate = (select max(rental_rate) from film) // SORU 2

select * from film where rental_rate = (select min(rental_rate) from film) and replacement_cost = (select min(replacement_cost) from film) // SORU 3

// SORU 4
SELECT customer.first_name, customer.last_name, payment.amount
FROM customer
INNER JOIN payment ON customer.customer_id = payment.customer_id
WHERE customer.customer_id =
(
  SELECT customer_id 
  FROM payment
  GROUP BY customer_id order by sum(amount) desc limit 1
);	
