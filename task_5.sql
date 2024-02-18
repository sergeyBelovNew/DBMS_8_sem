--5. Показать список нормативных цен (StandardCost), которые имеют несколько подкатегорий продуктов (ProductSubcategoryID), 
--из таблицы Production.Product, используя SELF JOIN.
SELECT 
    DISTINCT P1."StandardCost",
    COUNT(P1."ProductSubcategoryID") AS NumberOfProductSubcategories
FROM 
    "Production"."Product" AS P1
JOIN 
    "Production"."Product" AS P2 ON P1."StandardCost" = P2."StandardCost"
WHERE 
    P1."ProductSubcategoryID" <> P2."ProductSubcategoryID"
GROUP BY 
    P1."StandardCost"
HAVING 
    COUNT(P1."ProductSubcategoryID") > 1;
