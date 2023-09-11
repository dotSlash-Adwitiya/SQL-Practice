--- New Learning : We can insert - CASE Statement in-place of column in query !
--- We need to select, N and P --

--- Select N, along with that we need to check if N exists in P or Not
--- There can be 3 cases : 1. N exists, N doesn't exists, P is NULL.
--- So while scanning, just add these conditions
SELECT N,
    CASE 
        WHEN P IS NULL THEN 'Root'
        WHEN N IN (SELECT P FROM BST) THEN 'Inner'
        ELSE 'Leaf'
    END
FROM BST b1
ORDER BY N ASC;