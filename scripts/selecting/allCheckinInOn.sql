--  your SQL here
SELECT DISTINCT last_name, first_name
FROM students
JOIN checkins on students.id = checkins.student_id
WHERE checked_in_at BETWEEN '20160601' AND '20160630';