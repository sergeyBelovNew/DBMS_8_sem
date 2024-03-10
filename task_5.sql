--5. Вывести цвет Color, ProductLine и максимальный размер Size
-- для каждого цвета Color с разными линиями ProductLine,
-- предусмотреть вывод общего максимального размера для всех
-- цветов Color у различных ProductLine из таблицы
-- Production.Product. (Использовать ROOLUP). Отделить строки,
-- созданные с помощью агрегатных функций от строк из фактической
-- таблицы

SELECT
    DISTINCT "ProductLine",
    "Color",
    MAX("Size") AS MAX_SIZE
FROM "Production"."Product"
GROUP BY ROLLUP ("ProductLine", "Color", "Size");