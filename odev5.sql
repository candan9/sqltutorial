select * from film where title like '%n' order by film.length desc limit 5 //SORU 1
select * from film where title like '%n' order by film.length asc offset 5 limit 5 //SORU 2
select * from customer where store_id=1 order by last_name desc limit 5; // SORU 3
