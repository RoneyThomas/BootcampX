SELECT AVG(total_duration) as average_total_duration
FROM (
    SELECT cohorts.name as cohorts,
      SUM(completed_at - started_at) as total_duration
    FROM cohorts
      JOIN students on students.cohort_id = cohorts.id
      JOIN assistance_requests on assistance_requests.student_id = students.id
    GROUP BY cohorts.name
    ORDER BY total_duration
  ) as total_cohort_duration;