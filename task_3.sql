--3. Найти средний возраст мужчин и женщин из таблицы HumanResources.Employee, не учитывать 
--пустые значения

SELECT 
    AVG(CASE WHEN "Gender" = 'M' THEN age("BirthDate", timestamp '2024-02-17') END) AS AverageAgeMen,
    AVG(CASE WHEN "Gender" = 'F' THEN age("BirthDate", timestamp '2024-02-17') END) AS AverageAgeWomen
FROM "HumanResources"."Employee"
WHERE "BirthDate" IS NOT NULL

