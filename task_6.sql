--6. Изменить запрос п.5 использовать CUBE. Отделить строки, созданные с помощью агрегатных 
-- функций от строк из фактической таблицы

SELECT
    DISTINCT "ProductLine",
    "Color",
    MAX("Size") AS MAX_SIZE
FROM "Production"."Product"
GROUP BY CUBE ("ProductLine", "Color", "Size");