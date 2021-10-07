select rating from film group by rating // SORU 1
select replacement_cost, count(*) as "film sayisi" from film group by replacement_cost having count(*) >50 // SORU 2
select store_id, count(*) from customer group by store_id // SORU 3
select country_id , count(*)   from city group by country_id   order by count(*) desc limit 1 // SORU 4
