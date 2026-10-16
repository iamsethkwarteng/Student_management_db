CREATE TABLE Courses (
  course_id SERIAL PRIMARY KEY,
  course_name varchar(100) UNIQUE NOT NULL,
  course_code varchar(20) UNIQUE NOT NULL,
  description text,
  credits int check(credits > 0 and credits <=6),
  created_date timestamp DEFAULT CURRENT_TIMESTAMP,
  department_id int NOT NULL references Departments(department_id)
);