-- Battery Health Score Logic

SELECT 
    id,
    voltage,
    temperature,
    CASE 
        WHEN temperature > 60 THEN 'CRITICAL'
        WHEN temperature > 45 THEN 'WARNING'
        ELSE 'NORMAL'
    END AS health_status
FROM battery_table;
