SELECT c.name AS name, SUM(f.departure_delay) AS delay
FROM FLIGHTS f
JOIN CARRIERS AS c ON f.carrier_id = c.cid
GROUP BY c.name;

--22 rows
