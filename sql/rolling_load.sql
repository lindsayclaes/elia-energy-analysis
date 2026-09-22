-- 7-day rolling average of electricity load
SELECT
    Datetime,
    load_mw,
    ROUND(AVG(load_mw) OVER (
        ORDER BY Datetime
        ROWS BETWEEN 671 PRECEDING AND CURRENT ROW
    ), 1) AS rolling_7day_avg
FROM energy
ORDER BY Datetime;