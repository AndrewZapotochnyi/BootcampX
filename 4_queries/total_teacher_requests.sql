SELECT teachers.name, COUNT(assistance_requests.*)
FROM assistance_requests
JOIN teachers ON assistance_requests.teacher_id = teachers.id
GROUP BY teachers.name
HAVING teachers.name = 'Waylon Boehm';