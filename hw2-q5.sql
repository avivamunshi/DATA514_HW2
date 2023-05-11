SELECT c.name AS name, ROUND((CAST(SUM(f.canceled) AS FLOAT) / COUNT(*)) * 100, 1) AS percentage
FROM flights f
JOIN carriers c ON f.carrier_id = c.cid
WHERE f.origin_city = 'Seattle WA' 
GROUP BY f.carrier_id
HAVING percentage > 0.5
ORDER BY percentage ASC;

--6 rows