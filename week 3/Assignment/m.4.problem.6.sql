SELECT
  ep.planNo,
  count(el.planNo),
  sum(el.numberFLD)
FROM EventPlan AS ep, EventPlanLine AS el
WHERE ep.planNo = el.planNo
GROUP BY ep.planNo;