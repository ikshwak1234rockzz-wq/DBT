WITH CTE AS (

SELECT
TF.*,
DW.*
FROM {{ ref('trip_fact') }} TF
LEFT JOIN {{ ref('daily_weather') }} DW
ON TF.TRIP_DATE = DW.DAILY_WEATHER

)

SELECT * FROM CTE