SELECT cohorts.name, COUNT(students.name)
FROM students
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.name) >= 18
ORDER BY count(students.name);
