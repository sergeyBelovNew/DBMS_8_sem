--4. Показать список подкатегорий продуктов (ProductSubcategoryID), которые имеют несколько нормативных цен (StandardCost), из таблицы 
--Production.Product, используя SELF JOIN.
SELECT 
    DISTINCT P1."ProductSubcategoryID",
    COUNT(P1."StandardCost") AS NumberOfStandardCost
FROM 
    "Production"."Product" AS P1
JOIN 
    "Production"."Product" AS P2 ON P1."ProductSubcategoryID" = P2."ProductSubcategoryID"
WHERE 
    P1."StandardCost" <> P2."StandardCost"
GROUP BY 
    P1."ProductSubcategoryID"
HAVING 
    COUNT(P1."StandardCost") > 1;
