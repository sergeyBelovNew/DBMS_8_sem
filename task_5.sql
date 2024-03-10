<<<<<<< Updated upstream
--5. Вывести BusinessEntityID, LastReceiptDate и среднее по StandardPrice для BusinessEntityID с разными LastReceiptDate, 
--предусмотреть вывод общего среднего для всех StandardPrice у различных BusinessEntityID из таблицы Purchasing.ProductVendor. 
--(Использовать ROOLUP)

SELECT "BusinessEntityID", "LastReceiptDate", AVG("StandardPrice") AS AveragePrice
FROM "Purchasing"."ProductVendor"
GROUP BY rollup ("BusinessEntityID", "LastReceiptDate");
=======
--5. Вывести цвет Color, ProductLine и максимальный размер Size
-- для каждого цвета Color с разными линиями ProductLine,
-- предусмотреть вывод общего максимального размера для всех
-- цветов Color у различных ProductLine из таблицы
-- Production.Product. (Использовать ROOLUP). Отделить строки,
-- созданные с помощью агрегатных функций от строк из фактической
-- таблицы

SELECT
    DISTINCT "ProductLine",
    "Color",
    MAX("Size") AS MAX_SIZE
FROM "Production"."Product"
GROUP BY ROLLUP ("ProductLine", "Color", "Size");
>>>>>>> Stashed changes
