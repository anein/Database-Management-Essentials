SELECT
  er.evntNo,
  er.dateHeld,
  count(*) AS evntPlanCount
FROM EventRequest AS er
  INNER JOIN EventPlan AS ep ON er.evntNo = ep.evntNo
WHERE ep.workDate BETWEEN '2013-12-01' AND '2013-12-31'
GROUP BY er.evntNo
HAVING evntPlanCount > 1;