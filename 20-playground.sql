/*
En este desafío debes escribir tres consultas SELECT en SQL para imprimir información del metro de CDMX.

La tabla se llama cdmx_metro. Los campos de la tabla son estacion (texto), linea (texto), inaugurada (fecha), 
longitud_km (número decimal) y estaciones_con_transbordo (texto).

id	estacion	linea	inaugurada	longitud_km	estaciones_con_transbordo
INTEGER	VARCHAR(255)	VARCHAR(255)	TIMESTAMP	FLOAT	VARCHAR(255)
PRIMARY KEY	NOT NULL	NOT NULL	NOT NULL		
Para cumplir el reto debes escribir las siguientes consultas:

En la primera debes seleccionar el nombre de las estaciones donde la longitud en kilómetros es mayor a 6.
En la segunda debes seleccionar el nombre de las estaciones inauguradas desde el 1 de enero del año 2000.
En la tercera debes calcular el promedio de kilómetros de todas las estaciones. Imprime el resultado como longitud_promedio.
*/

-- Escribe tu código aquí 👇
SELECT * FROM cdmx_metro;

SELECT `estacion`
FROM `cdmx_metro`
WHERE `longitud_km` < 6;

SELECT `estacion`
FROM `cdmx_metro`
WHERE `inagurada` >= `2000-01-01`;

SELECT AVG(`longitud_km`)
AS longitud_promedio FROM `estaciones`;

-- Solución para la plataforma de Platzi
SELECT estacion
FROM cdmx_metro
WHERE longitud_km > 6;

SELECT estacion
FROM cdmx_metro
WHERE inaugurada >= "2000-01-01";

SELECT AVG(longitud_km) AS longitud_promedio
FROM cdmx_metro;