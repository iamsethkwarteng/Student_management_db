CREATE TABLE Instructors (
  instructor_id SERIAL PRIMARY KEY,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  email varchar(100) UNIQUE NOT NULL,
  phone varchar(20),
  date_of_birth date,
  hire_date date DEFAULT CURRENT_DATE,
  end_date date CHECK (end_date is null or end_date >= hire_date),
  salary numeric(10,2),
  department_id int NOT NULL references Departments(department_id),
  created_at timestamp DEFAULT CURRENT_TIMESTAMP
);