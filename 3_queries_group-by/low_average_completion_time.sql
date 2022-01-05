SELECT students.name as student,
  avg(assignment_submissions.duration) as average_assignment_duration,
  avg(assignments.duration) as average_assignmnet_estimated_dauration
FROM assignment_submissions
  JOIN students on students.id = student_id
  JOIN assignments on assignments.id = assignment_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;