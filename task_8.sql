-- 8. Показать поля ProductID, Name из таблицы Production.Product с применением функции COALESCE(). 
-- Показать поле Meauserement, так, чтобы, если значение в поле известно Class, то показать его, а иначе, показать значение 
--в поле Style. Если и в поле Style значение неизвестно, то вывести значение 'UNKNOWN'.
SELECT "ProductID", "Name", COALESCE("Class", "Style", 'UNKNOWN') AS Measurement
FROM "Production"."Product";

