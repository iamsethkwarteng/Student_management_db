
CREATE TABLE Classes (
  class_id SERIAL PRIMARY KEY,
  course_id int NOT NULL references Courses(course_id),
  instructor_id int NOT NULL references Instructors(instructor_id),
  semester varchar(20) NOT NULL,
  year int NOT NULL,
  max_students int NOT NULL CHECK (max_students > 0) DEFAULT 30,
  schedule varchar(100),
  created_at timestamp DEFAULT CURRENT_TIMESTAMP
);
