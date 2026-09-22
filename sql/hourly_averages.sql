-- Average load, solar, and wind production by hour of day
SELECT
    hour,
    ROUND(AVG(load_mw), 1) AS avg_load,
    ROUND(AVG(solar_mw), 1) AS avg_solar,
    ROUND(AVG(wind_mw), 1) AS avg_wind
FROM energy
GROUP BY hour
ORDER BY hour;