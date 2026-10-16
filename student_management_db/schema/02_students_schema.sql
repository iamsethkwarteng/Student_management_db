CREATE TABLE Students (
  student_id SERIAL PRIMARY KEY,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  date_of_birth date,
  email varchar(100) UNIQUE NOT NULL,
  phone varchar(20),
  enrolled_date date DEFAULT CURRENT_DATE,
  department_id int NOT NULL references Departments(department_id)
  is_active boolean DEFAULT true,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP
);