-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

SELECT distinct(CITY) 
FROM STATION
WHERE city LIKE 'a%' or 
city LIKE 'e%' or 
city LIKE 'i%' or  
city LIKE 'o%' or 
city LIKE 'u%';