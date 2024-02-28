USE metro_cdmx;

-- Selecionar todo
SELECT * FROM `lines`;

-- Filtrar por columnas
SELECT id, name, color FROM `lines`;

-- Operaciones matemáticas con SELECT
SELECT (2 + 2);

SELECT (2 + 2) AS resultado; -- Renombrar con AS

-- Calcular un promedio del año en trains
SELECT AVG(year) AS year_avg FROM `trains`; 