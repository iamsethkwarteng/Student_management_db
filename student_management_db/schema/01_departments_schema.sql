CREATE TABLE Departments (
  department_id SERIAL PRIMARY KEY,
  name varchar(100) UNIQUE NOT NULL,
  location varchar(100),
  created_at timestamp DEFAULT CURRENT_TIMESTAMP
);