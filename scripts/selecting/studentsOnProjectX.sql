Select first_name, last_name from 
students inner join students_to_projects
on students.id = students_to_projects.student_id
where project_id = 5;