select * from country where country LIKE 'A%a' //SORU 1
select * from country where country LIKE '%_____n' //SORU 2
select * from film where title ILIKE '%t%t%t%t%' //SORU 3
select * from film where title LIKE 'C%' AND film.length>90 AND rental_rate=2.99 //SORU 4
