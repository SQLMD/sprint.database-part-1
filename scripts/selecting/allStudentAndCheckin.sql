-- Your SQL here
SELECT * FROM students 
JOIN checkins on students.id = checkins.student_id;