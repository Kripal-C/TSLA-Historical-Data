SELECT 
	COUNT(*),
    COUNT(DISTINCT Date), 
    MIN(Date) AS first_date, 
    MAX(Date) AS last_date
FROM tsladata
WHERE Volume > 0;

DROP TABLE IF EXISTS tsla;
CREATE TABLE tsla AS
SELECT DATE(Date) AS trade_date, Open, High, Low, Close, Volume
FROM tsladata
WHERE Volume > 0;



