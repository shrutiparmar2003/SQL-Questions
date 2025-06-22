/*Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels.
Your result cannot contain duplicates.*/

SELECT DISTINCT CITY
FROM STATION
WHERE
    NOT (
        LOWER(CITY) LIKE 'a%' OR
        LOWER(CITY) LIKE 'e%' OR
        LOWER(CITY) LIKE 'i%' OR
        LOWER(CITY) LIKE 'o%' OR
        LOWER(CITY) LIKE 'u%'
    )
    OR
    NOT (
        LOWER(CITY) LIKE '%a' OR
        LOWER(CITY) LIKE '%e' OR
        LOWER(CITY) LIKE '%i' OR
        LOWER(CITY) LIKE '%o' OR
        LOWER(CITY) LIKE '%u'
    );

