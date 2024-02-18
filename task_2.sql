--2. Найти минимальный вес (Weight) из таблицы Production.Product, не учитывать пустые значения.
SELECT MIN("Weight") AS MinWeight
FROM "Production"."Product"
WHERE "Weight" IS NOT NULL


