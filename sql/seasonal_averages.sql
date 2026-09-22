-- Average load, solar, wind, and renewable share by season
SELECT
    CASE
        WHEN month IN (12, 1, 2) THEN 'Winter'
        WHEN month IN (3, 4, 5) THEN 'Spring'
        WHEN month IN (6, 7, 8) THEN 'Summer'
        WHEN month IN (9, 10, 11) THEN 'Autumn'
    END AS season,
    ROUND(AVG(load_mw), 1) AS avg_load,
    ROUND(AVG(solar_mw), 1) AS avg_solar,
    ROUND(AVG(wind_mw), 1) AS avg_wind,
    ROUND(AVG(renewable_share_pct), 1) AS avg_renewable_share_pct
FROM energy
GROUP BY season
ORDER BY avg_load DESC;