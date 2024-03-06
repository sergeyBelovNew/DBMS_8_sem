--10. Заменить на NULL значение в поле цвет (Color), если цвет товара красный (red). 
--Показать поля ProductID, Name, Color из таблицы Production.Product, если цвет товара определен (поле не пустое).

SELECT "ProductID", "Name", NULLIF("Color", 'red') AS Color
FROM "Production"."Product"
WHERE "Color" IS NOT NULL;

