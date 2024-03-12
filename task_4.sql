--4. Вывести страны, где количество городов = 1, из таблицы Person.StateProvince (из выборки исключить пустые поля).

SELECT "CountryRegionCode" 
FROM "Person"."StateProvince"
WHERE "Name" IS NOT NULL
GROUP BY "CountryRegionCode"
HAVING COUNT(DISTINCT "IsOnlyStateProvinceFlag") = 1;
