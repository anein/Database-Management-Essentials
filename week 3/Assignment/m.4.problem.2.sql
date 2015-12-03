SELECT
  e.empName,
  e.department,
  e.phone,
  e.email
FROM Employee AS e
WHERE e.phone LIKE '3-%';