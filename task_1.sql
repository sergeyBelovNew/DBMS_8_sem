--1. Показать Фамилию Имя и Отчество самого молодого сотрудника (Таблицы HumanResources.Employee и Person.Person). 
--Показать поля FirstName, MiddleName, LastName
SELECT p."FirstName", p."MiddleName", p."LastName"
FROM "HumanResources"."Employee" AS e
JOIN "Person"."Person" AS p ON e."BusinessEntityID" = p."BusinessEntityID"
WHERE e."BirthDate" = (SELECT MIN("BirthDate") FROM "HumanResources"."Employee");
