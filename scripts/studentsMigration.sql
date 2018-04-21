BEGIN;

CREATE TABLE towns (id SERIAL PRIMARY KEY, name TEXT);

insert into towns(name)
select DISTINCT town_of_origin from students;

ALTER TABLE students ADD COLUMN town_id integer;

UPDATE students 
SET town_id = towns.id
FROM towns
WHERE students.town_of_origin = towns.name;

ALTER TABLE students DROP COLUMN town_of_origin;

ALTER TABLE students
   ADD CONSTRAINT fk_student_town
   FOREIGN KEY (town_id) 
   REFERENCES towns(id);

CREATE INDEX ON students (town_id);

COMMIT;