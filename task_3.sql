--3.	Показать категорию (ProductSubcategoryID) товаров, для которой существует более 7 размеров (Таблица Production.Product). Показать поля Name, Size и 
--ProductSubcategoryID. 
SELECT psc."Name", p."Size", p."ProductSubcategoryID"
FROM "Production"."Product" p
JOIN "Production"."ProductSubcategory" psc ON p."ProductSubcategoryID" = psc."ProductSubcategoryID"
WHERE p."ProductSubcategoryID" IN (
    SELECT "ProductSubcategoryID"
    FROM "Production"."Product"
    GROUP BY "ProductSubcategoryID"
    HAVING COUNT(DISTINCT "Size") > 7
);
