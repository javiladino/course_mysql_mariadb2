--  crear tabla de random para un reto de la clase de DELETE

USE metro_cdmx;

-- Creación de tabla stations
CREATE TABLE `stations_delete` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,

  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

  PRIMARY KEY (id)

) 
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;