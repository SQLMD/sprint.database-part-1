-- Your SQL here
UPDATE students
SET date_of_birth = date_of_birth + (100*365)
WHERE date_of_birth < current_date - (100*365);
