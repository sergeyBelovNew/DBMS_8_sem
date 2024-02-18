--6. Показать список типов спецпредложений (Type), которые имеют несколько значений минимального количества (MinQty) не меньше 15, 
--из таблицы Sales.SpecialOffer, используя SELF JOIN.
SELECT 
    DISTINCT S1."Type",
    COUNT(S1."MinQty") AS NumberOfMinQtys
FROM 
    "Sales"."SpecialOffer" AS S1
JOIN 
    "Sales"."SpecialOffer" AS S2 ON S1."Type" = S2."Type"
WHERE 
    S1."MinQty" >= 15 AND S1."MinQty" <> S2."MinQty"
GROUP BY 
    S1."Type"
HAVING 
    COUNT(S1."MinQty") > 1;
