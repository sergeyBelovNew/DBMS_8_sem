--8. Показать список BusinessEntityID, которые содержатся в таблице Sales.SalesPerson, но не содержатся в таблице Sales.Store.
SELECT "BusinessEntityID"
FROM "Sales"."SalesPerson"
EXCEPT
SELECT "BusinessEntityID"
FROM "Sales"."Store";