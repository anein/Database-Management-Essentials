SELECT
  er.evntNo,
  er.dateHeld,
  er.dateReq,
  er.estCost,
  er.status
FROM EventRequest AS er
  INNER JOIN EventPlan AS ep ON er.evntNo = ep.evntNo
  INNER JOIN Employee AS e ON ep.empNo = e.empNo
  INNER JOIN Facility AS f ON er.facNo = f.facNo
WHERE (f.facName = 'Basketball arena') AND (er.dateHeld BETWEEN '2013-10-01' AND '2013-12-31') AND
      (e.empName = 'Mary Manager');