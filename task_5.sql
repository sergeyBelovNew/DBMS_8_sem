--5. Вывести BusinessEntityID, LastReceiptDate и среднее по StandardPrice для BusinessEntityID с разными LastReceiptDate, 
--предусмотреть вывод общего среднего для всех StandardPrice у различных BusinessEntityID из таблицы Purchasing.ProductVendor. 
--(Использовать ROOLUP)

SELECT "BusinessEntityID", "LastReceiptDate", AVG("StandardPrice") AS AveragePrice
FROM "Purchasing"."ProductVendor"
GROUP BY rollup ("BusinessEntityID", "LastReceiptDate");
