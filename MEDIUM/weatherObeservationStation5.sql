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

-->> Alternate solution using UNION in a single query  :
(
  SELECT s1.city, LENGTH(s1.city) AS city_length
  FROM STATION s1
  WHERE LENGTH(s1.city) = (SELECT MIN(LENGTH(s2.city)) FROM STATION s2)
  ORDER BY s1.city
  LIMIT 1
)
UNION
(
  SELECT s1.city, LENGTH(s1.city) AS city_length
  FROM STATION s1
  WHERE LENGTH(city) = (SELECT MAX(LENGTH(s2.city)) FROM STATION s2 ) 
  ORDER BY s1.city DESC
  LIMIT 1
);

--> 1st Query will fetch us the min city and its length
--> 2nd Query will fetch us the min city and its length
--> Finally, UNION will combine the result of both.
