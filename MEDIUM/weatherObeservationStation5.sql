----->> Query All the city with max and min length, if multiple city exists, 
----->> Then query the 1st one after ordering alphabetically

--> Solution : 
--> 1st Query the max/min lenght
--> Then wherever this length matches, query them
--> There can be multiples, so YOU MUST Use ORDER BY Clause.

SELECT city, LENGTH(city) 
    FROM STATION 
WHERE LENGTH(city) = (
                      SELECT MIN(LENGTH(city)) FROM STATION 
                     ) ORDER BY city LIMIT 0,1;       

SELECT city, LENGTH(city) 
    FROM STATION 
WHERE LENGTH(city) = (
                      SELECT MAX(LENGTH(city)) FROM STATION 
                      )ORDER BY city LIMIT 0,1;             