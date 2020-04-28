SELECT students.name, COUNT(assistance_requests.*)
FROM assistance_requests
JOIN students ON assistance_requests.student_id = students.id
GROUP BY students.id
HAVING students.name = 'Elliot Dickinson';