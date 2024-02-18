--3.	Показать поля ProductID, BusinessEntityID, AverageLeadTime, StandardPrice из таблицы Purchasing.ProductVendor, 
--где средний промежуток времени (в днях) между размещением заказа у продавца и получением приобретенного продукта (
--AverageLeadTime) больше 16, а обычная отпускная цена продавца (StandardPrice) находится в диапазоне от $50 до $60. 
--Использовать оператор BETWEEN.
SELECT "ProductID", "BusinessEntityID", "AverageLeadTime", "StandardPrice" FROM "Purchasing"."ProductVendor" WHERE "AverageLeadTime" > 16 
AND "StandardPrice" BETWEEN 50 AND 60;