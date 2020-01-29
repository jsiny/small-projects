-- https://leetcode.com/problems/combine-two-tables/

   SELECT FirstName, LastName, City, State
     FROM Person AS P
LEFT JOIN Address AS A
       ON P.PersonId = A.PersonID;