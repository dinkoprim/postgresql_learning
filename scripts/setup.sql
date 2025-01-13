CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT
);

CREATE TABLE enrollments (
    student_id INT REFERENCES students(id),
    course_id INT REFERENCES courses(id),
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (student_id, course_id)
);

INSERT INTO students (name, age, email) VALUES
('Alice Johnson', 20, 'alice.johnson@example.com'),
('Bob Smith', 22, 'bob.smith@example.com');

INSERT INTO courses (title, description) VALUES
('Introduction to PostgreSQL', 'Learn the basics of PostgreSQL.'),
('Advanced SQL Techniques', 'Explore advanced SQL queries and optimizations.');

INSERT INTO enrollments (student_id, course_id) VALUES
(1, 1),
(1, 2),
(2, 1);