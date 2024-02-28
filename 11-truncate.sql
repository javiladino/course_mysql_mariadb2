USE metro_cdmx;

-- Modo DELETE FROM

TRUNCATE TABLE `stations_delete`;

--Esto es para ver que un DELETE FROM NO reestablece los id

INSERT INTO `stations_delete` (name) VALUES
("Lázaro Cárdens"), -- Lázaro Cárdenas
("Ferería"), -- Ferrería 
("Pnttlán"), -- Pantitlán
("Tauga"), -- Tacuba
("MartínCrrera"), -- Martín Carrera
("Santa Anita"),
("Villa de Aragón");