const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});


const [, , cohort_name] = process.argv

// console.log(cohort_name, limit);

pool.query(`
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = '${cohort_name}'
ORDER BY teacher;
`)
.then(res => {

  res.rows.forEach(user => {
    console.log(user.cohort, user.teacher);
  })
});