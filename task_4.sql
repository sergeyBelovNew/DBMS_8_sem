--4. Показать поля PurchaseOrderID, RevisionNumber, Status, ShipDate из таблицы Purchasing.PurchaseOrderHeader, для 
--которых известна ориентировочная дата отгрузки от поставщика (ShipDate) и текущее состояние заказа (Status) "Ожидание" (= 1).
SELECT "PurchaseOrderID", "RevisionNumber", "Status", "ShipDate" FROM "Purchasing"."PurchaseOrderHeader"
WHERE "ShipDate" IS NOT NULL AND "Status" = 1;
