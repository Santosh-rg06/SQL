CREATE DATABASE my_hospital_info;

USE my_hospital_info;

SHOW DATABASES;


CREATE TABLE hospital_info (
    hospital_id INT PRIMARY KEY,
    hospital_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    established_year INT
);



INSERT INTO hospital_info VALUES
(1, 'Apollo Hospital', 'Chennai', 'Tamil Nadu', 'India', 1983),
(2, 'Fortis Hospital', 'Mumbai', 'Maharashtra', 'India', 1996),
(3, 'Max Healthcare', 'New Delhi', 'Delhi', 'India', 2001),
(4, 'AIIMS', 'New Delhi', 'Delhi', 'India', 1956),
(5, 'Narayana Health', 'Bangalore', 'Karnataka', 'India', 2000),
(6, 'Sunway Medical', 'Kuala Lumpur', 'Selangor', 'Malaysia', 1999),
(7, 'Mount Elizabeth', 'Singapore', 'Singapore', 'Singapore', 1979),
(8, 'Mayo Clinic', 'Rochester', 'Minnesota', 'USA', 1889),
(9, 'Cleveland Clinic', 'Cleveland', 'Ohio', 'USA', 1921),
(10, 'Charité', 'Berlin', 'Berlin', 'Germany', 1710),
(11, 'St. Thomas Hospital', 'London', 'England', 'UK', 1173),
(12, 'Royal Melbourne', 'Melbourne', 'Victoria', 'Australia', 1848),
(13, 'Toronto General', 'Toronto', 'Ontario', 'Canada', 1819),
(14, 'Hôpital Necker', 'Paris', 'Île-de-France', 'France', 1778),
(15, 'São Paulo Hospital', 'São Paulo', 'São Paulo', 'Brazil', 1943);

//IN
SELECT * FROM hospital_info WHERE city IN ('Mumbai', 'Bangalore', 'New York');

//NOT IN
SELECT * FROM hospital_info WHERE city NOT IN ('Mumbai', 'Bangalore', 'New York');

// BETWEEN
SELECT * FROM hospital_info WHERE established_year BETWEEN 1950 AND 2000;

// NOT BETWEEN
SELECT * FROM hospital_info WHERE established_year NOT BETWEEN 1950 AND 2000;

// AND
SELECT * FROM hospital_info WHERE state = 'California' AND established_year > 2000;

// OR
SELECT * FROM hospital_info WHERE state = 'California' OR established_year > 2000;