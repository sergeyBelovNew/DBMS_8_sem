--Ограничить результирующий набор, полученный в п.8.

SELECT sp."BusinessEntityID"
FROM "Sales"."SalesPerson" sp
EXCEPT
SELECT ss."BusinessEntityID"
FROM "Sales"."Store" ss
LIMIT 10;
