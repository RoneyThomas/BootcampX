SELECT cohorts.name as name,
  AVG(
    assistance_requests.completed_at - assistance_requests.started_at
  ) as average_duration
FROM assistance_requests
  JOIN students ON students.id = assistance_requests.student_id
  JOIN cohorts on cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY average_duration DESC
LIMIT 1;