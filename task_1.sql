--1. Показать адреса электронной почты (EmailAddress) и поля PersonType, FirstName, LastName из таблиц Person.Person, 
--Person.EmailAddress.
SELECT 
    "EmailAddress",
    P."PersonType",
    P."FirstName",
    P."LastName"
FROM 
    "Person"."Person" AS P
JOIN 
    "Person"."EmailAddress" AS E ON P."BusinessEntityID" = E."BusinessEntityID";

