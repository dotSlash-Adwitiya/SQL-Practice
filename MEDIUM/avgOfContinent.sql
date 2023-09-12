--> Q : Find the average population of city, in every continent.
--> common column are - Country.code and city.countrycode
--> Round them *DOWN* to the nearest integer

-->> JOIN on the common column
-->> GROUP By the column, which is on the many side of the relationship / Or the one that could be fetched in multiple rows and create redundancy.

-->> c1 instance is for city Table , and c2 is for Country Table
SELECT c2.continent, FLOOR(AVG(c1.population)) 
FROM CITY c1 JOIN Country c2 ON
c1.CountryCode = c2.code
GROUP BY c2.continent;
