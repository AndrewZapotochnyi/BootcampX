SELECT teachers.name AS teacher, cohorts.name AS cohort, 
FROM teachers
JOIN assistance_requests ON assistance_requests.teacher_id = teachers.id
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY teacher, cohort
HAVING cohorts.name = 'JUL02'
ORDER BY teachers.name;