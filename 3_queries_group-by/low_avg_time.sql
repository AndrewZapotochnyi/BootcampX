SELECT students.name, AVG(assignment_submissions.duration) AS factual_time , AVG(assignments.duration) AS recommended_time
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
JOIN assignments ON assignment_submissions.assignment_id = assignments.id
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration);
