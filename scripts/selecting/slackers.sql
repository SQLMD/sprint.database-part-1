--Using outer join
select first_name || ' ' || last_name 
from students 
left outer join 
students_to_projects on students_to_projects.student_id = students.id
WHERE student_id is null;

--using subselect
select first_name, last_name from students
WHERE id not in 
(select student_id from students_to_projects);