-- Method-I :-
-->> city LIKE 'Pattern-to-match', will be written after every LOGICAL Operator.
SELECT DISTINCT city FROM station 
WHERE city LIKE 'a%' ||
city LIKE 'e%' || city LIKE 'i%' ||
city LIKE 'o%' || city LIKE 'u%';

-- Method-II :-
-->> PATTERN MATCHING In MySQL : using RLIKE operator, followed by a string
-->> String can be in "" or ''
SELECT DISTINCT CITY FROM STATION WHERE CITY RLIKE '^[AEIOU]';