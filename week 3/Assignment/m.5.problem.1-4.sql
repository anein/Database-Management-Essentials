SELECT
  epl.planNo,
  epl.lineNo,
  epl.numberFLD AS 'Number',
  epl.timeStart,
  epl.timeEnd,
  l.locName     AS 'Location name',
  r.resName     AS 'Resource name'
FROM EventPlanLine AS epl
  INNER JOIN EventPlan AS ep ON epl.planNo = ep.planNo
  INNER JOIN Location AS l ON epl.locNo = l.locNo
  INNER JOIN ResourceTbl AS r ON epl.resNo = r.resNo
  INNER JOIN Facility AS f ON l.facNo = f.facNo
WHERE (f.facName = 'Basketball arena') AND (ep.activity = 'Operation') AND
      (ep.workDate BETWEEN '2013-10-01' AND '2013-12-31')
ORDER BY epl.planNo;