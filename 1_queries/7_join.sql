-- @BLOCK
SELECT students.name as student_name,
  email,
  cohorts.name as cohort_name
FROM students
  INNER JOIN cohorts ON cohorts.id = cohort_id;
-- LEFT, RIGHT and FULL OUTER JOIN
-- 1. FROM students LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;
-- 2. FROM students RIGHT OUTER JOIN cohorts ON cohorts.id = cohort_id;
-- 3. FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;
-- @BLOCK
SELECT students.name as student_name,
  cohorts.name as cohort_name,
  cohorts.start_date as cohort_start_date,
  students.start_date as student_start_date
FROM students
  INNER JOIN cohorts on cohorts.id = cohort_id
WHERE cohorts.start_date != students.start_date
ORDER BY cohort_start_date;