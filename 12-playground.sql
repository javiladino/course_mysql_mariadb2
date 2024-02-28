'''
Para resolver este reto debes crear, actualizar y eliminar registros usando SQL.

INSERT
Crea un nuevo registro en la tabla lines con el id 7, nombre Nueva Linea 7 y color Naranja.

id	name	color	created_at	updated_at
...	...	...	...	...
7	Nueva Linea 7	Naranja	...	...
UPDATE
Actualiza el registro de la linea con id 1, cambia el nombre por Linea 1.

id	name	color	created_at	updated_at
1	Linea 1	Rojo	...	...
...	...	...	...	...
DELETE
Elimina el registro de la linea con id 5.

'''

-- Escribe tu código aquí 👇
SELECT * FROM lines;
INSERT INTO lines (id, name, color) VALUES
("7", "Nueva Linea 7", "Naranja");

UPDATE `lines`
SET name = "Linea 1"
WHERE id = 1;

DELETE FROM `lines`;
WHERE id = 5;

