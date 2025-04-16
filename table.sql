CREATE DATABASE complex_relations_db;
USE complex_relations_db;

CREATE TABLE department_info (
    dept_id INT,
    dept_name VARCHAR(50),
    location VARCHAR(50),
    budget DECIMAL(10,2),
    head VARCHAR(50),
    phone_number BIGINT,
    email VARCHAR(50),
    established_year INT,
    employee_count INT,
    active CHAR(1)
);
ALTER TABLE department_info ADD PRIMARY KEY (dept_id);

CREATE TABLE employee_info (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT,
    position VARCHAR(50),
    salary DECIMAL(10,2),
    email VARCHAR(100),
    doj DATE,
    phone BIGINT,
    gender CHAR(1),
    status VARCHAR(20)
);
ALTER TABLE employee_info ADD PRIMARY KEY (emp_id);
ALTER TABLE employee_info ADD FOREIGN KEY (dept_id) REFERENCES department_info(dept_id);


CREATE TABLE project_info (
    project_id INT,
    project_name VARCHAR(50),
    dept_id INT,
    emp_id INT,
    client_name VARCHAR(50),
    start_date DATE,
    end_date DATE,
    budget DECIMAL(10,2),
    status VARCHAR(30),
    location VARCHAR(50)
);
ALTER TABLE project_info ADD PRIMARY KEY (project_id);
ALTER TABLE project_info ADD FOREIGN KEY (dept_id) REFERENCES department_info(dept_id);
ALTER TABLE project_info ADD FOREIGN KEY (emp_id) REFERENCES employee_info(emp_id);


CREATE TABLE task_info (
    task_id INT,
    task_name VARCHAR(50),
    dept_id INT,
    emp_id INT,
    project_id INT,
    start_date DATE,
    end_date DATE,
    priority VARCHAR(20),
    status VARCHAR(20),
    remarks TEXT
);
