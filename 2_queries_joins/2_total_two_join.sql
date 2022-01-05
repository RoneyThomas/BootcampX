-- @BLOCK
SELECT sum(assignment_submissions.duration) as total_duration
FROM students
  JOIN cohorts ON cohorts.id = students.cohort_id
  JOIN assignment_submissions ON assignment_submissions.student_id = students.id
WHERE cohorts.name = 'FEB12';
-- Aggegrate functions
-- @BLOCK
SELECT students.name as student,
  count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
  JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name;
-- @BLOCK
SELECT students.name as student,
  count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
  JOIN students ON students.id = student_id
GROUP BY students.name
HAVING count(assignment_submissions.*) < 100;