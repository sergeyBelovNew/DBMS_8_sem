--3. Найти средний возраст мужчин и женщин из таблицы HumanResources.Employee, не учитывать 
--пустые значения

SELECT 
    AVG(age("BirthDate", timestamp '2024-02-17')) AS AverageAge
FROM "HumanResources"."Employee"
WHERE "BirthDate" IS NOT null 
group by "Gender";
