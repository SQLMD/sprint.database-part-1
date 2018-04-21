--  your SQL here
SELECT DISTINCT projects.name
FROM students
INNER JOIN checkins on students.id = checkins.student_id
INNER JOIN students_to_projects on students_to_projects.student_id = students.id
INNER JOIN projects on projects.id = students_to_projects.project_id
WHERE checked_in_at BETWEEN '20160601' AND '20160630'
order by name;