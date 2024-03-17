--Пропустить 15 строк из результирующего набора, полученного в п.9.

SELECT sp."BusinessEntityID"
FROM "Sales"."SalesPerson" sp
EXCEPT
SELECT ss."BusinessEntityID"
FROM "Sales"."Store" ss
OFFSET 10;
