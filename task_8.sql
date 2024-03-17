--8. Показать список BusinessEntityID, которые содержатся в таблице Sales.SalesPerson, но не содержатся в таблице Sales.Store.
<<<<<<< Updated upstream
=======

>>>>>>> Stashed changes
SELECT "BusinessEntityID"
FROM "Sales"."SalesPerson"
EXCEPT
SELECT "BusinessEntityID"
<<<<<<< Updated upstream
FROM "Sales"."Store";
=======
FROM "Sales"."Store";
>>>>>>> Stashed changes
