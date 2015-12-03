SELECT
  l.locNo,
  l.locName
FROM Location AS l, Facility AS f
WHERE l.facNo = f.facNo AND f.facName = 'Basketball arena';