Por tu gran trabajo en el metro de CDMX la alcaldía de Bogotá te contrató para trabajar en las bases de datos del Metro de Bogotá.

Las tablas y registros de estaciones y lineas ya fueron creados:

Tabla estaciones:
id	nombre	longitud_km	inaguracion
...	...	...	...
Tabla lineas:
id	nombre	color
...	...	...
Pero falta conectar cada estación con su respectiva línea. Para eso debes crear una tabla pivote linea_estaciones con las propiedades linea_id y estacion_id.

Tabla linea_estaciones:
linea_id	estacion_id
...	...
Puedes conectar las estaciones con las lineas que prefieras, pero asegúrate de que cada linea tenga al menos 5 estaciones.

💡 Para esta tarea puedes agregar los valores manualmente o usar consultas anidadas.


CREATE TABLE `linea_estaciones` (
  `id` BIGINT(20) NOT NULL,
  `linea_id` BIGINT(20) NOT NULL,
  `estacion_id` BIGINT(20) NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  CONSTRAINT `linea_estaciones_linea_id_foreign`
  FOREIGN KEY (`linea_id`) REFERENCES `lineas` (`id`),
  CONSTRAINT `linea_estaciones_estacion_id_foreign`
  FOREIGN KEY (`estacion_id`) REFERENCES `estaciones` (`id`)
);

-- INSERTAR 5 ESTACIONES PARA LA LÍNEA 1
INSERT INTO `linea_estaciones` (id, linea_id, estacion_id) VALUES
(1, 1, 15),
(2, 1, 9),
(3, 1, 2),
(4, 1, 7),

-- INSERTAR REGISTRO CON CONSULTA ANIDADA
(
  5,
  (
    SELECT `id`
    FROM `lineas`
    WHERE `color` = "Amarillo"
  ),
  (
    SELECT `id`
    FROM `estaciones`
    WHERE `inaguracion` = "2026-07-15"
  )
);

-- INSERTAR 5 ESTACIONES PARA LA LÍNEA 2
INSERT INTO `linea_estaciones` (id, linea_id, estacion_id) VALUES
(6, 2, 5),
(7, 2, 1),
(8, 2, 12),
(9, 2, 14),
(10, 2, 3);

-- INSERTAR 5 ESTACIONES PARA LA LÍNEA 3
INSERT INTO `linea_estaciones` (id, linea_id, estacion_id) VALUES
(11, 3, 15),
(12, 3, 10),
(13, 3, 9),
(14, 3, 7),
(15, 3, 6);

SELECT * FROM `linea_estaciones`;