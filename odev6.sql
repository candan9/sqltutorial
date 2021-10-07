select avg(rental_rate) as "ortalama değer" from film //SORU 1
select COUNT(*) as "C ile başlayanlar" from film where title like 'C%' //SORU 2
select MAX(film.length) as "En uzun film rate = 0.99" from film where rental_rate=0.99 //SORU 3
select count(distinct(replacement_cost)) from film where film.length>150 //SORU 4
