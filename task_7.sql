--7. Изменить запрос п.5 использовать GROUPING SETS . Отделить строки, созданные с помощью агрегатных 
-- функций от строк из фактической таблицы

SELECT
    DISTINCT "ProductLine",
    "Color",
    MAX("Size") as MAX_SIZE,
    GROUPING ("Size")
FROM "Production"."Product"
GROUP BY GROUPING SETS (("ProductLine", "Color", "Size"), ())