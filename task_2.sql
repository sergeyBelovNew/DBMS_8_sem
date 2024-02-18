--2. Определить количество сотрудников и город, в котором проживает максимальное число сотрудников (Таблица Person.[Address].
SELECT COUNT("AddressID") AS NumberOfEmployees, "City"
FROM "Person"."Address"
GROUP BY "City"
ORDER BY NumberOfEmployees DESC
LIMIT 1;