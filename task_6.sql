--6. Показать поля AddressID, AddressLine1, City из таблицы Person.Address. Показать только адреса из списка городов 
--(Bothell, Dallas, Ottawa, Calgary). Использовать оператор IN.
SELECT "AddressID", "AddressLine1", "City"
FROM "Person"."Address"
WHERE "City" IN ('Bothell', 'Dallas', 'Ottawa', 'Calgary');

