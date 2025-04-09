CREATE DATABASE my_academic_records_db;
USE my_academic_records_db;
           
CREATE TABLE college_info (
    college_id INT PRIMARY KEY,
    college_name VARCHAR(100) UNIQUE,
    city VARCHAR(50),
    university VARCHAR(100),
    accreditation CHAR(1) CHECK (accreditation IN ('A', 'B', 'C'))
);


CREATE TABLE student_info (
    usn VARCHAR(10) PRIMARY KEY,
    name VARCHAR(50),
    branch VARCHAR(50),
    college_id INT,
    grade CHAR(1) CHECK (grade IN ('A', 'B', 'C')),
    FOREIGN KEY (college_id) REFERENCES college_info(college_id)
);


INSERT INTO college_info (college_id, college_name, city, university, accreditation) VALUES
(1, 'University Visvesvaraya College of Engineering', 'Bangalore', 'Bangalore University', 'A'),
(2, 'Government Engineering College, Hassan', 'Hassan', 'VTU', 'B'),
(3, 'Government Engineering College, Ramanagara', 'Ramanagara', 'VTU', 'B'),
(4, 'Government Engineering College, Haveri', 'Haveri', 'VTU', 'C'),
(5, 'Government Engineering College, Karwar', 'Karwar', 'VTU', 'C'),
(6, 'Government Engineering College, Raichur', 'Raichur', 'VTU', 'B'),
(7, 'Government Engineering College, Chamarajanagar', 'Chamarajanagar', 'VTU', 'C'),
(8, 'Government Engineering College, Kushalnagar', 'Kushalnagar', 'VTU', 'C'),
(9, 'Government Engineering College, Krishnarajpet', 'Krishnarajpet', 'VTU', 'C'),
(10, 'Government Engineering College, Hoovina Hadagali', 'Hoovina Hadagali', 'VTU', 'C'),
(11, 'University B.D.T College of Engineering', 'Davangere', 'VTU', 'B'),
(12, 'Government Engineering College, Bellary', 'Bellary', 'VTU', 'C'),
(13, 'Government Engineering College, Koppal', 'Koppal', 'VTU', 'C'),
(14, 'Government Engineering College, Mandya', 'Mandya', 'VTU', 'B'),
(15, 'Government Engineering College, Bidar', 'Bidar', 'VTU', 'C');


INSERT INTO student_info (usn, name, branch, college_id, grade) VALUES
('4GK21CS030', 'Santosh', 'CSE', 1, 'A'),
('4GK21CS031', 'Sagar', 'ECE', 2, 'B'),
('4GK21CS032', 'Sandeep', 'ME', 3, 'B'),
('4GK21CS033', 'Srinivas', 'CSE', 4, 'A'),
('4GK21CS034', 'Shashank', 'ECE', 5, 'C'),
('4GK21CS035', 'Sachin', 'ME', 6, 'B'),
('4GK21CS036', 'Sunil', 'CSE', 7, 'A'),
('4GK21CS037', 'Suraj', 'ECE', 8, 'C'),
('4GK21CS038', 'Sharath', 'ME', 9, 'B'),
('4GK21CS039', 'Suhas', 'CSE', 10, 'A'),
('4GK21CS040', 'Subash', 'ECE', 11, 'B'),
('4GK21CS041', 'Satyam', 'ME', 12, 'C'),
('4GK21CS042', 'Siddharth', 'CSE', 13, 'B'),
('4GK21CS043', 'Sumanth', 'ECE', 14, 'A'),
('4GK21CS044', 'Shivraj', 'ME', 15, 'B');

SELECT * FROM college_info;
SELECT * FROM student_info;

ALTER TABLE student_info
ADD phone_number VARCHAR(15);


ALTER TABLE student_info
RENAME COLUMN usn TO student_usn;


ALTER TABLE student_info
RENAME COLUMN name TO student_name;


ALTER TABLE student_info
RENAME COLUMN branch TO department;


ALTER TABLE student_info
MODIFY student_usn VARCHAR(15);


ALTER TABLE student_info
MODIFY student_name VARCHAR(100);

ALTER TABLE student_info
MODIFY grade VARCHAR(5);


UPDATE student_info
SET phone_number = '9876543210'
WHERE student_usn IN ('4GK21CS030', '4GK21CS031', '4GK21CS032');


UPDATE student_info
SET phone_number = '9123456789'
WHERE student_usn IN ('4GK21CS033', '4GK21CS034', '4GK21CS035');


UPDATE student_info
SET phone_number = '9012345678'
WHERE student_usn IN ('4GK21CS036', '4GK21CS037', '4GK21CS038');


UPDATE student_info
SET phone_number = '9988776655'
WHERE student_usn IN ('4GK21CS039', '4GK21CS040', '4GK21CS041');

UPDATE student_info
SET phone_number = '8899001122'
WHERE student_usn IN ('4GK21CS042', '4GK21CS043', '4GK21CS044');


DELETE FROM student_info
WHERE student_usn = '4GK21CS030';

DELETE FROM student_info
WHERE department = 'ME';

DELETE FROM student_info
WHERE grade = 'C';

DELETE FROM student_info
WHERE college_id = 5;

SELECT * FROM student_info
WHERE department = 'CSE' AND grade = 'A';

SELECT * FROM student_info
WHERE department = 'ME' OR grade = 'C';

SELECT * FROM student_info
WHERE department IN ('CSE', 'ECE');

SELECT * FROM student_info
WHERE grade NOT IN ('A', 'B');

SELECT * FROM student_info
WHERE college_id BETWEEN 3 AND 7;

SELECT * FROM student_info
WHERE college_id NOT BETWEEN 8 AND 12;

SELECT department, COUNT(*) AS student_count
FROM student_info
GROUP BY department;

SELECT grade, AVG(college_id) AS avg_college
FROM student_info
GROUP BY grade;

SELECT MAX(college_id) AS max_college_id FROM student_info;

SELECT MIN(grade) AS lowest_grade FROM student_info;

SELECT COUNT(*) AS total_students FROM student_info;

SELECT s.student_usn, s.student_name, c.college_name
FROM student_info s
INNER JOIN college_info c
ON s.college_id = c.college_id;

SELECT s.student_usn, s.student_name, c.college_name
FROM student_info s
LEFT JOIN college_info c
ON s.college_id = c.college_id;

SELECT s.student_usn, s.student_name, c.college_name
FROM student_info s
RIGHT JOIN college_info c
ON s.college_id = c.college_id;

SELECT student_usn FROM student_info WHERE department = 'CSE'
UNION
SELECT student_usn FROM student_info WHERE grade = 'A';


SELECT student_usn FROM student_info WHERE department = 'ECE'
UNION ALL
SELECT student_usn FROM student_info WHERE grade = 'B';


SELECT student_usn FROM student_info WHERE department = 'CSE'
INTERSECT
SELECT student_usn FROM student_info WHERE grade = 'A';

