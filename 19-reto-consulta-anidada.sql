USE metro_cdmx;

SELECT
ST_Distance_Sphere(
    (
        SELECT `locations`.`location`
        FROM `stations`
        INNER JOIN `locations`
        ON `stations`.`id` = `locations`.`station_id`
        WHERE `stations`.`name` = "Calle 11"
    ),
    (
        SELECT `locations`.`location`
        FROM `stations`
        INNER JOIN `locations`
        ON `stations`.`id` = `locations`.`station_id`
        WHERE `stations`.`name` = "Tezozómoc"
    )
) / 1000 AS distance;