select DISTINCT(replacement_cost) from film //SORU 1
select COUNT(DISTINCT(replacement_cost)) from film //SORU 2
select count(title) from film WHERE title LIKE 'T%' AND rating = 'G'  //SORU 3
select  count(country) from country WHERE length(country)=5 //SORU 4
select  count(city) from city WHERE city ILIKE '%r'  //SORU 5
