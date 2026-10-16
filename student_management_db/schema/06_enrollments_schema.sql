
CREATE TABLE Enrollments (
  enrollment_id SERIAL PRIMARY KEY,
  student_id int NOT NULL references Students(student_id) on delete cascade,
  class_id int NOT NULL references Classes(class_id),
  enrollment_date date DEFAULT CURRENT_DATE,
  grade varchar(2),
  created_at timestamp DEFAULT CURRENT_TIMESTAMP,
  constraint unique_enrollment UNIQUE(student_id,class_id)
);
