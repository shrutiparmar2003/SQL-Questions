-- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
select distinct(city)
from station
where city not like '%a' and city not like '%e' and city not like '%i' and city not like '%o' and city not like '%u';
