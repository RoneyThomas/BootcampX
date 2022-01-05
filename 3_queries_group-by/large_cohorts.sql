-- @BLOCK
SELECT cohorts.name as cohort_name,
  sum(students.cohort_id) as student_count
FROM students
  JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY student_count;