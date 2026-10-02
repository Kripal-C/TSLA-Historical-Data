SELECT 
	COUNT(*),
    COUNT(DISTINCT Date), 
    MIN(Date) AS first_date, 
    MAX(Date) AS last_date
FROM tsladata
WHERE Volume > 0;



