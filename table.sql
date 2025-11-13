--# Students Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    age INT,
    department VARCHAR(50)
);

--# Courses Table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    instructor VARCHAR(100),
    credits INT
);

-- # Enrollments Table 
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade CHAR(2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
--# Insert students
INSERT INTO Students VALUES
(1, 'Aarav Sharma', 'aarav@gmail.com', 20, 'CSE'),
(2, 'Priya Patel', 'priya@gmail.com', 21, 'AIML'),
(3, 'Rohan Verma', 'rohan@gmail.com', 22, 'ECE');

-- # Insert courses
INSERT INTO Courses VALUES
(101, 'Database Systems', 'Dr. Mehta', 4),
(102, 'Artificial Intelligence', 'Dr. Rao', 3),
(103, 'Computer Networks', 'Dr. Sen', 3);

-- #Insert enrollments
INSERT INTO Enrollments VALUES
(1, 1, 101, 'A'),
(2, 1, 103, 'B'),
(3, 2, 101, 'A'),
(4, 2, 102, 'A'),
(5, 3, 103, 'B');


SELECT s.name AS Student, c.course_name AS Course, c.instructor
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;


SELECT c.course_name, COUNT(e.student_id) AS total_students
FROM Courses c
LEFT JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;


SELECT c.course_name,
       AVG(CASE e.grade WHEN 'A' THEN 4 WHEN 'B' THEN 3 WHEN 'C' THEN 2 ELSE 0 END) AS avg_grade
FROM Enrollments e
JOIN Courses c ON e.course_id = c.course_id
GROUP BY c.course_name;


SELECT s.name, c.course_name
FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE e.grade = 'A';
