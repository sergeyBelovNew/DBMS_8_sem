--5. Вывести BusinessEntityID, LastReceiptDate и среднее по StandardPrice для BusinessEntityID с разными LastReceiptDate, 
--предусмотреть вывод общего среднего для всех StandardPrice у различных BusinessEntityID из таблицы Purchasing.ProductVendor. 
--(Использовать ROOLUP)

SELECT "BusinessEntityID", "LastReceiptDate", AVG("StandardPrice") OVER (PARTITION BY "BusinessEntityID") AS AvgStandardPrice, AVG("StandardPrice") OVER () AS TotalAvgStandardPrice
FROM "Purchasing"."ProductVendor";





