SELECT
  er.evntNo,
  er.dateAuth,
  er.status
FROM EventRequest AS er
WHERE (er.status = 'Approved' OR er.status = 'Denied') AND er.dateAuth BETWEEN '2013-07-01' AND '2013-07-31';