--2. Показать список продуктов (поле Name), в котором указано, есть ли у продукта действительная цена (ActualCost) или нет, из таблиц 
--Production.Product, Production.WorkOrderRouting, используя LEFT OUTER JOIN.
SELECT 
    P."Name" AS ProductName,
    CASE 
        WHEN WO."ActualCost" IS NOT NULL THEN 'Есть действительная цена'
        ELSE 'Нет действительной цены'
    END AS CostStatus
FROM 
    "Production"."Product" AS P
LEFT OUTER JOIN 
    "Production"."WorkOrderRouting" AS WO ON P."ProductID" = WO."ProductID";
