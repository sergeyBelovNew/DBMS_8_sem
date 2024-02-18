--7. Показать поля BusinessEntityID, EmailAddressID и EmailAddress из таблицы Person.EmailAddress. Неизвестные значения поля EmailAddress заменить на
-- 'no email'. 
SELECT "BusinessEntityID", "EmailAddressID", COALESCE("EmailAddress", 'no email') AS EmailAddress
FROM "Person"."EmailAddress";



