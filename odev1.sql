select title,description from film --Soru1
select * from film  where film.length between 60 and 75 --Soru2
select * from film  where rental_rate=0.99 AND (replacement_cost=12.99 OR replacement_cost=28.99) --Soru3
select last_name from customer where first_name='Mary'  --Cevap Smith
select * from film where film.length<50 and (rental_rate != 2.99 or rental_rate != 4.99)