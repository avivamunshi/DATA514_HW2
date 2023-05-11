SELECT AVG(arrival_delay) AS delay
FROM FLIGHTS f
JOIN WEEKDAYS w ON f.day_of_week_id = w.did
WHERE f.origin_city = 'Seattle WA' AND w.day_of_week = 'Monday';

--1 row
-- 5.55878084179971