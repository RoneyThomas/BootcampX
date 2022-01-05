SELECT name,
  id,
  cohort_id
FROM students
WHERE email ISNULL
  OR phone IS NULL;