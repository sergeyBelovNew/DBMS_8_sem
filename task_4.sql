--4.	Показать товары, цена которых равна максимальной цене товара из той же подкатегории (Таблица Production.Product). 
--Показать поля [Name], ListPrice и ProductSubcategoryID. 
SELECT p."Name", p."ListPrice", p."ProductSubcategoryID"
FROM "Production"."Product" p
WHERE (p."ProductSubcategoryID", p."ListPrice") IN (
    SELECT "ProductSubcategoryID", MAX("ListPrice")
    FROM "Production"."Product"
    GROUP BY "ProductSubcategoryID"
);