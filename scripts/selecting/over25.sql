SELECT *
FROM students
WHERE date_of_birth < current_date - (25*365);