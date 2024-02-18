--4. Вывести страны, где количество городов = 1, из таблицы Person.StateProvince (из выборки исключить пустые поля).
SELECT *
FROM "Person"."StateProvince"
where "IsOnlyStateProvinceFlag"  = 1;
