--10. Заменить на NULL значение в поле цвет (Color), если цвет товара красный (red). 
--Показать поля ProductID, Name, Color из таблицы Production.Product, если цвет товара определен (поле не пустое).

UPDATE "Production"."Product"
SET "Color" = NULL
WHERE "Color" = 'red';

SELECT "ProductID", "Name", "Color"
FROM "Production"."Product"
WHERE "Color" IS NOT NULL;
