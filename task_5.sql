--5. Показать товары, цена которых больше средней цены в любом размере (Таблица Production.Product). Показать поля [Name], Size и ListPrice.
SELECT p."Name", p."Size", p."ListPrice"
FROM "Production"."Product" p
WHERE p."ListPrice" > (
    SELECT AVG("ListPrice")
    FROM "Production"."Product"
);
