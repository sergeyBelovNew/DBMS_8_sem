--3. Показать список продуктов (поле Name), в котором указано, есть ли у продукта подкатегория или нет, из таблиц 
--Production.ProductSubcategory, Production.Product, используя RIGHT OUTER JOIN.
SELECT 
    P."Name" AS ProductName,
    CASE 
        WHEN PS."ProductSubcategoryID" IS NOT NULL THEN 'Есть подкатегория'
        ELSE 'Нет подкатегории'
    END AS SubcategoryStatus
FROM 
    "Production"."Product" AS P
RIGHT OUTER JOIN 
    "Production"."ProductSubcategory" AS PS ON P."ProductSubcategoryID" = PS."ProductSubcategoryID";
