/*
1. film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
2. film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
3. film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
4. film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?
*/


-----------1-----------
SELECT avg(rental_rate) from film

-----------2-----------
SELECT COUNT(*) from film
WHERE title LIKE 'C%'

-----------3-----------
SELECT MAX(length) from film
WHERE rental_rate=0.99

-----------4-----------
SELECT COUNT(DISTINCT replacement_cost) from film
WHERE length>150