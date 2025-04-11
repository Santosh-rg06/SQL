create database college;
use college;



CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

    
    INSERT INTO student (rollno, name, marks, grade, city)
VALUES 
  (101, 'ravi', 56, 'c', 'Pune'),
  (102, 'shanu', 34, 'b', 'mysure'),
  (103, 'ramei', 60, '2', 'punjab'),
  (104, 'hanu', 70, 'b', 'gul'),
  (105, 'avi', 69, 'c', 'beng'),
  (106, 'sharu', 78, 'a', 'mysure');
  
  select distinict city from student;
  select * from student;
  select * from student where marks >40 and city = 'beng';
  
  

    
    
    
    

