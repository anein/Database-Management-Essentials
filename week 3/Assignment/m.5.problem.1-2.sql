SELECT
  ep.planNo,
  ep.evntNo,
  ep.workDate,
  ep.activity
FROM EventPlan AS ep
  INNER JOIN EventRequest AS er ON ep.evntNo = er.evntNo
  INNER JOIN Facility AS f ON er.facNo = f.facNo
WHERE (f.facName = 'Basketball arena') AND (ep.workDate BETWEEN '2013-12-01' AND '2013-12-31');