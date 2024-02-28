USE metro_cdmx;


-- Calculamos en metros con datos quemados (escritos a mano)
SELECT
ST_Distance_Sphere(
    POINT(-99.14912224, 19.42729875),
    POINT(-99.17658806, 19.42025648)
) / 1000 AS distance;