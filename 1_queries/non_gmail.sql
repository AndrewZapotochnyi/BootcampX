SELECT name, email, id, cohort_id
FROM students
WHERE NOT email LIKE '%gmail.com'
OR phone IS null;
