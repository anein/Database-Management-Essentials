SELECT *
FROM ResourceTbl AS r
WHERE r.rate >= 10 AND r.rate <= 20
ORDER BY r.rate;