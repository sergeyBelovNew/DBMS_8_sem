--5. Показать cтандартный код ISO для стран и регионов (CountryRegionCode) и название страны или региона (Name), имеющие
-- отношение к Конго (Congo) из таблицы Person.CountryRegion.
SELECT "CountryRegionCode", "Name" FROM "Person"."CountryRegion" WHERE "Name" LIKE '%Congo%';