-- You are managing a student database for an online course platform. You have a table named students with the following columns:
-- id (number)
-- name (text)
-- course (text)
-- score (number)
-- email (text)
-- phone (text)
-- city (text)
-- bonus_points (number, can be NULL)
-- Complete the following tasks:
-- Add the following students into the students table:
-- (1, 'Asha', 'Python', 85, 'asha@mail.com', '9876543210', 'Chennai', 5)
-- (2, 'Ravi', 'Python', 90, 'ravi@mail.com', '9876543211', 'Chennai', NULL)
-- (3, 'Sneha', 'Java', 78, 'sneha@mail.com', '9876543212', 'Mumbai', NULL)
-- (4, 'Karan', 'Java', 88, 'karan@mail.com', '9876543213', 'Delhi', 2)
-- (5, 'Divya', 'Python', 95, 'divya@mail.com', '9876543214', 'Mumbai', 4)
-- (6, 'Manoj', 'JavaScript', 72, 'manoj@mail.com', '9876543215', 'Delhi', NULL)
-- Show the total number of students in each course.

-- Show the average score for each course, but only for courses where the average score is more than 80.

-- Show names and scores of students who are from Chennai or Mumbai.

-- Show the details of students who don’t have any bonus points.

-- Combine the list of student names from Chennai and from Mumbai into a single column list (use UNION).

INSERT INTO `students`(`id`, `name`, `course`, `score`, `email`, `phone`, `city`, `bonus_points`) VALUES (1, 'Asha', 'Python', 85, 'asha@mail.com', '9876543210', 'Chennai', 5),
(2, 'Ravi', 'Python', 90, 'ravi@mail.com', '9876543211', 'Chennai', NULL),
(3, 'Sneha', 'Java', 78, 'sneha@mail.com', '9876543212', 'Mumbai', NULL),
(4, 'Karan', 'Java', 88, 'karan@mail.com', '9876543213', 'Delhi', 2),
(5, 'Divya', 'Python', 95, 'divya@mail.com', '9876543214', 'Mumbai', 4),
(6, 'Manoj', 'JavaScript', 72, 'manoj@mail.com', '9876543215', 'Delhi', NULL);

Select course,count(*) AS total_students from students GROUP BY course;

-- course
-- total_students 

-- Java
-- 2  

-- JavaScript
-- 1

-- Python
-- 3

SELECT course,avg(score) AS avg_score from students GROUP BY course HAVING avg_score>80;

-- course
-- avg_score

-- Java
-- 83.0000

-- Python
-- 90.0000

SELECT name,score from students WHERE city IN ('Chennai','Mumbai');

-- name
-- score

-- Asha
-- 85

-- Ravi
-- 90

-- Sneha
-- 78

-- Divya
-- 95

SELECT * from students WHERE bonus_points is NULL;

-- id
-- name
-- course
-- score
-- email
-- phone
-- city
-- bonus_points

-- 2
-- Ravi
-- Python
-- 90
-- ravi@mail.com
-- 9876543211
-- Chennai
-- NULL

-- 3
-- Sneha
-- Java
-- 78
-- sneha@mail.com
-- 9876543212
-- Mumbai
-- NULL

-- 6
-- Manoj
-- JavaScript
-- 72
-- manoj@mail.com
-- 9876543215
-- Delhi
-- NULL

SELECT name from students where city="Chennai" UNION SELECT name from students WHERE city="Mumbai";

-- name
-- Asha
-- Ravi
-- Sneha
-- Divya





