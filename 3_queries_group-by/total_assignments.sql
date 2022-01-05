SELECT day,
  count(*) as total_assignments
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;
-- @BLOCK
SELECT day,
  count(*) as total_assignments
FROM assignments
GROUP BY assignments.day
HAVING count(*) >= 10
ORDER BY assignments.day;