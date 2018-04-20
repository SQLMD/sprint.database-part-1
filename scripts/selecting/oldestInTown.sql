SELECT MIN(date_of_birth),town_of_origin
FROM students
GROUP BY town_of_origin;