-- You are helping design a student registration system for a training institute. You need to:
-- Create a table called students with the following information:
-- student_id (a unique number for each student)
-- name (student's name)
-- email (each student must have a unique email address)
-- Create another table called courses with:
-- course_id (a unique number for each course)
-- course_name (name of the course)
-- Create a table called enrollments to store which student has enrolled in which course. This table should:
-- Include student_id and course_id
-- Make sure both values must match existing records in the other two tables


CREATE TABLE student (
    student_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    PRIMARY KEY (student_id)
);


CREATE TABLE course (
    course_id INT NOT NULL AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (course_id)
);


CREATE TABLE enrollments (
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    PRIMARY KEY (student_id, course_id)
);
