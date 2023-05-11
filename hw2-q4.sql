SELECT DISTINCT c.name AS name
FROM FLIGHTS f
JOIN CARRIERS c ON f.carrier_id = c.cid
JOIN MONTHS m ON f.month_id = m.mid
WHERE f.day_of_month = 24 AND m.month = "July"
GROUP BY c.name
HAVING COUNT(*) > 1000;

--12 rows