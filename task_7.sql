--7. Показать комбинированный список таблиц Person.BusinessEntityAddress, Person.BusinessEntityContact, используя UNION
SELECT * FROM "Person"."BusinessEntityAddress"
UNION
SELECT * FROM "Person"."BusinessEntityContact";