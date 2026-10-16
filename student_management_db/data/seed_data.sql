--sample data for student management system

-- 1. Departments (no dependencies)
insert into  Departments(name, location) values 
 ('Computer Science', 'Tech Building'),
 ('Mathematics', 'Science Hall'),
 ('Physics', 'Science Hall'),
 ('English', 'Arts Building');

--2. Instructors (depends on Departments)
insert into instructors (first_name,last_name,email,date_of_birth, salary, department_id) values 
  ('Kwame', 'Asante', 'kwame.asante@example.com', '1985-03-12', 6500, 1),
  ('Ama', 'Mensah', 'ama.mensah@example.com', '1990-07-24', 5800, 2),
  ('John', 'Williams', 'john.williams@example.com', '1982-11-05', 7200, 3),
  ('Akosua', 'Owusu', 'akosua.owusu@example.com', '1988-01-18', 6100, 4);

--3 Students (depends on Departments)
insert into  students (first_name, last_name, email, date_of_birth, department_id) values
  ('Kofi', 'Boateng', 'kofi.boateng@student.edu', '2002-04-15', 1),
  ('Emily', 'Johnson', 'emily.johnson@student.edu', '2001-08-22', 2),
  ('Abena', 'Asante', 'abena.asante@student.edu', '2003-01-10', 1),
  ('Yaw', 'Mensah', 'yaw.mensah@student.edu', '2003-06-18', 2),
  ('Michael', 'Williams', 'michael.williams@student.edu', '2002-11-05', 3);

--4. Courses (depends on Departments)
insert into courses (course_code, course_name, credits, department_id) values 
 ('CS101', 'Introduction to Programming', 4, 1),
 ('MATH101', 'Introduction to Calculus', 3, 2),
 ('CS203', 'Introduction to Web Development', 3, 1),
 ('PHY101', 'Applied Physics', 4, 3),
 ('ENG101', 'Academic English', 2, 4);


--5. Classes (depends on Instructors and Courses  )
insert into classes(course_id, instructor_id, semester, year, schedule) values
 (1, 1, 'Spring',2024, 'Mon/Wed 09:00-11:00'),
 (2, 2, 'Spring',2024, 'Tue/Thu 10:00-12:00'),
 (3, 1, 'Spring',2024,'Mon/Wed/Fri 13:00-15:00'),
(4, 3, 'Spring',2024, 'Tue/Thu 08:00-10:00'),
 (5, 4, 'Spring',2024, 'Mon/Thu 14:00-16:00');

--6. Enrollments (depends on Students and Classes)
insert into enrollments (student_id,class_id) values 
 (1, 1), (1,2), (1,3),
 (2,1), (2,5),
 (3,3), (3,5),
 (4,4), (4,3),
 (5,3), (5,1);