/*Your SQL assignment

I hope this message finds you well.

Assignment:
1) CREATE 5 Tables with 5 columns.
By using ALTER
1) Add 2 columns
2) drop 1 column
3) rename 3 columns
4) change 3 columns datatype. */



CREATE DATABASE college_assignment_db;
USE college_assignment_db;

CREATE TABLE Library (
    lib_id INT PRIMARY KEY,
    lib_name VARCHAR(100),
    location VARCHAR(100),
    capacity INT,
    established_year INT
);


CREATE TABLE Book (
    book_id INT PRIMARY KEY,
    title VARCHAR(150),
    author VARCHAR(100),
    published_year INT,
    lib_id INT
);


CREATE TABLE Member (
    member_id INT PRIMARY KEY,
    member_name VARCHAR(100),
    join_date DATE,
    membership_type VARCHAR(20),
    lib_id INT
);

CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    staff_name VARCHAR(100),
    designation VARCHAR(50),
    salary DECIMAL(10, 2),
    lib_id INT
);

CREATE TABLE Issue (
    issue_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    issue_date DATE,
    return_date DATE
);
  
ALTER TABLE Member
ADD phone_number VARCHAR(15);

ALTER TABLE Member
ADD email VARCHAR(100);

ALTER TABLE Library
DROP COLUMN established_year;

ALTER TABLE Book
RENAME COLUMN title TO book_title;

ALTER TABLE Book
RENAME COLUMN author TO book_author;

ALTER TABLE Member
RENAME COLUMN member_name TO full_name;

ALTER TABLE Staff
MODIFY salary FLOAT;

ALTER TABLE Library
MODIFY capacity SMALLINT;

ALTER TABLE Member
MODIFY phone_number BIGINT;

