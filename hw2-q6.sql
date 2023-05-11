SELECT C.name as carrier, MAX(F.price) as max_price
FROM FLIGHTS F
JOIN CARRIERS C ON F.carrier_id = C.cid
WHERE (F.origin_city = 'Seattle WA' AND F.dest_city = 'New York NY') OR (F.origin_city = 'New York NY' AND F.dest_city = 'Seattle WA')
GROUP BY F.carrier_id;

-- 3 rows
