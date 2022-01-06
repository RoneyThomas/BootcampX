const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT DISTINCT teachers.name as teacher,
  cohorts.name as cohort
FROM assistance_requests
  JOIN students ON students.id = assistance_requests.student_id
  JOIN teachers ON teachers.id = assistance_requests.teacher_id
  JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name LIKE '${process.argv[2] || 'JUL02'}'
GROUP BY teachers.name,
  cohorts.name
ORDER BY teacher;
  `)
  .then(res => {
    res.rows.forEach(teachers => {
      console.log(`${teachers.cohort}: ${teachers.teacher}`);
    });
  }).catch(err => console.error('query error', err.stack));