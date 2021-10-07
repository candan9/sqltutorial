CREATE TABLE employee  (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  birthday DATE,
  email VARCHAR(50) NOT NULL
);    // SORU 1

//   UPDATE ORNEKLERI 

// 1-) ID değeri çift olan çalışanların isimlerini büyük yap.

UPDATE employee
SET name=upper(name)
WHERE id % 2 = 0

// 2-) Name alanı "e" ile biten çalışanların doğum günün bugün yap.

UPDATE employee
SET birthday = CURRENT_DATE
WHERE name ilike '%e'

// 3-) 2020'de doğmuş çalışanların isimlerine " hbd" ekle (iyi ki doğdun hediyesi)

UPDATE employee
SET name = ' hbd ' || name
WHERE birthday between '2020-01-01' and '2020-12-31'

// 4-) Maili .com uzantılı olan çalışanların ismine "(com)" 

UPDATE employee
SET name = name || '(com)' 
WHERE  email like '%com%'

// 5-) Mailinde sayı olan çalışanların mail adreslerini büyük yap.

UPDATE employee
SET email = upper(email)
WHERE  email ~ '[0-9]'

//      DELETE ORNEKLERİ

// 1-) Büyük küçük farketmeksizin ismi e ile biten çalışanları sil.

DELETE FROM employee
WHERE name ilike '%e';

// 2-) birthday alanı bugün olan çalışanları sil.

DELETE FROM employee
WHERE birthday = CURRENT_DATE;

// 3-) email alanında sayı bulunan çalışanları sil.

DELETE FROM employee
WHERE  email ~ '[0-9]'

// 4-) name alanı "A" ile başlayan çalışanları sil.

DELETE FROM employee
WHERE  name ilike 'a%'

// 5-) name alanında "com" olan çalışanları sil.

DELETE FROM employee
WHERE  name ilike '%com%'
 
