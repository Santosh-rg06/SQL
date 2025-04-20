-- Create the database
CREATE DATABASE IF NOT EXISTS HostelDB;
USE HostelDB;

-- Hostel table
CREATE TABLE hostel (
    hostel_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(255),
    capacity INT,
    gender ENUM('Male', 'Female', 'Co-ed') DEFAULT 'Co-ed',
    established_year YEAR
);

-- Room table
CREATE TABLE room (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    hostel_id INT,
    room_number VARCHAR(10),
    room_type ENUM('Single', 'Double', 'Triple') DEFAULT 'Single',
    FOREIGN KEY (hostel_id) REFERENCES hostel(hostel_id)
);

-- Student table
CREATE TABLE student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    gender ENUM('Male', 'Female'),
    contact_number VARCHAR(15)
);

-- Joining table (many-to-one relation: many students -> one room)
CREATE TABLE joining (
    joining_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    hostel_id INT,
    room_id INT,
    joining_date DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (hostel_id) REFERENCES hostel(hostel_id),
    FOREIGN KEY (room_id) REFERENCES room(room_id)
);
