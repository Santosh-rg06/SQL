/*Create 5 Tables with 10 columns
Using ALTER apply NOT NULL, Unique, and Check constraints for any 3 columns.
Table 1 - PK
Table 2 - PK, FK (Table 1)
Table 3 - PK, FK (Table1, Table2)
Table 4 - PK, FK (Table 1, Table 2, Table 3)
Table 5 - PK, FK (Table1, Table2, Table3, Table4)

Insert 20 data for each table.
Using ALTER rename column names for 4 columns.
Fetch the data using AND, OR, IN, BETWEEN, NOT IN, NOT BETWEEN, LIKE, GROUP BY, HAVING, Aggregate functions*/

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
ALTER TABLE task_info ADD PRIMARY KEY (task_id);
ALTER TABLE task_info ADD FOREIGN KEY (dept_id) REFERENCES department_info(dept_id);
ALTER TABLE task_info ADD FOREIGN KEY (emp_id) REFERENCES employee_info(emp_id);
ALTER TABLE task_info ADD FOREIGN KEY (project_id) REFERENCES project_info(project_id);


CREATE TABLE report_info (
    report_id INT,
    dept_id INT,
    emp_id INT,
    project_id INT,
    task_id INT,
    report_date DATE,
    description TEXT,
    hours_spent INT,
    status VARCHAR(20),
    reviewed_by VARCHAR(50)
);
ALTER TABLE report_info ADD PRIMARY KEY (report_id);
ALTER TABLE report_info ADD FOREIGN KEY (dept_id) REFERENCES department_info(dept_id);
ALTER TABLE report_info ADD FOREIGN KEY (emp_id) REFERENCES employee_info(emp_id);
ALTER TABLE report_info ADD FOREIGN KEY (project_id) REFERENCES project_info(project_id);
ALTER TABLE report_info ADD FOREIGN KEY (task_id) REFERENCES task_info(task_id);

ALTER TABLE employee_info MODIFY emp_name VARCHAR(50) NOT NULL;
ALTER TABLE employee_info ADD CONSTRAINT uq_email UNIQUE (email);
ALTER TABLE employee_info ADD CONSTRAINT chk_salary CHECK (salary > 0);

INSERT INTO department_info VALUES
(1, 'HR', 'Alice', 'Bangalore', 'INDIA', 'active', 12, 101, 'A', 150000),
(2, 'Finance', 'Bob', 'Mumbai', 'INDIA', 'active', 10, 102, 'B', 200000),
(3, 'Sales', 'Charlie', 'Chennai', 'INDIA', 'active', 8, 103, 'A', 180000),
(4, 'Marketing', 'David', 'Delhi', 'INDIA', 'active', 6, 104, 'B', 170000),
(5, 'R&D', 'Eve', 'Hyderabad', 'INDIA', 'inactive', 15, 105, 'C', 210000),
(6, 'Design', 'Frank', 'Pune', 'INDIA', 'active', 7, 106, 'A', 160000),
(7, 'Support', 'Grace', 'Kolkata', 'INDIA', 'inactive', 4, 107, 'B', 140000),
(8, 'Admin', 'Hank', 'Jaipur', 'INDIA', 'active', 3, 108, 'C', 130000),
(9, 'Logistics', 'Ivy', 'Ahmedabad', 'INDIA', 'active', 9, 109, 'A', 155000),
(10, 'QA', 'Jake', 'Nagpur', 'INDIA', 'active', 5, 110, 'B', 145000),
(11, 'IT', 'Kris', 'Surat', 'INDIA', 'active', 6, 111, 'C', 165000),
(12, 'Legal', 'Leo', 'Patna', 'INDIA', 'active', 4, 112, 'B', 175000),
(13, 'Procurement', 'Maya', 'Ranchi', 'INDIA', 'inactive', 5, 113, 'C', 120000),
(14, 'Compliance', 'Nina', 'Lucknow', 'INDIA', 'active', 2, 114, 'A', 110000),
(15, 'Security', 'Omar', 'Bhopal', 'INDIA', 'active', 3, 115, 'B', 125000),
(16, 'Training', 'Paul', 'Indore', 'INDIA', 'inactive', 4, 116, 'A', 135000),
(17, 'Strategy', 'Queen', 'Mysore', 'INDIA', 'active', 6, 117, 'B', 185000),
(18, 'Operations', 'Ray', 'Thane', 'INDIA', 'active', 8, 118, 'A', 195000),
(19, 'Data', 'Sara', 'Coimbatore', 'INDIA', 'active', 7, 119, 'C', 175000),
(20, 'Content', 'Tom', 'Vijayawada', 'INDIA', 'active', 5, 120, 'B', 140000);

INSERT INTO employee_info VALUES
(1, 'Anil', 'Manager', 1, 'Bangalore', 5, 70000, 'male', 'A+', 'India', 1234567890),
(2, 'Sunita', 'Analyst', 2, 'Mumbai', 3, 60000, 'female', 'B+', 'India', 1234567891),
(3, 'Ravi', 'Executive', 3, 'Chennai', 2, 50000, 'male', 'O+', 'India', 1234567892),
(4, 'Kiran', 'Lead', 4, 'Delhi', 4, 75000, 'female', 'A-', 'India', 1234567893),
(5, 'Deepak', 'Developer', 5, 'Hyderabad', 5, 80000, 'male', 'B-', 'India', 1234567894),
(6, 'Asha', 'Tester', 6, 'Pune', 2, 52000, 'female', 'AB+', 'India', 1234567895),
(7, 'Raj', 'Admin', 7, 'Kolkata', 3, 48000, 'male', 'A+', 'India', 1234567896),
(8, 'Priya', 'Designer', 8, 'Jaipur', 4, 62000, 'female', 'O-', 'India', 1234567897),
(9, 'Kishore', 'Executive', 9, 'Ahmedabad', 1, 55000, 'male', 'B+', 'India', 1234567898),
(10, 'Rekha', 'Manager', 10, 'Nagpur', 6, 72000, 'female', 'A+', 'India', 1234567899),
(11, 'Vikas', 'Developer', 11, 'Surat', 3, 59000, 'male', 'O+', 'India', 9876543210),
(12, 'Meena', 'Tester', 12, 'Patna', 2, 49000, 'female', 'AB-', 'India', 9876543211),
(13, 'Vivek', 'Lead', 13, 'Ranchi', 6, 78000, 'male', 'B+', 'India', 9876543212),
(14, 'Seema', 'Executive', 14, 'Lucknow', 4, 51000, 'female', 'A+', 'India', 9876543213),
(15, 'Ankit', 'Manager', 15, 'Bhopal', 3, 70000, 'male', 'O-', 'India', 9876543214),
(16, 'Poonam', 'Analyst', 16, 'Indore', 1, 60000, 'female', 'B-', 'India', 9876543215),
(17, 'Sohail', 'Developer', 17, 'Mysore', 5, 82000, 'male', 'A+', 'India', 9876543216),
(18, 'Neha', 'Designer', 18, 'Thane', 2, 64000, 'female', 'O+', 'India', 9876543217),
(19, 'Amit', 'Tester', 19, 'Coimbatore', 4, 58000, 'male', 'AB+', 'India', 9876543218),
(20, 'Divya', 'Admin', 20, 'Vijayawada', 3, 54000, 'female', 'A-', 'India', 9876543219);
SELECT * FROM department_info;
SELECT * FROM employee_info;


ALTER TABLE department_info RENAME COLUMN dept_name TO department_name;
ALTER TABLE employee_info RENAME COLUMN emp_name TO employee_name;
ALTER TABLE project_info RENAME COLUMN project_name TO proj_name;
ALTER TABLE task_info RENAME COLUMN task_name TO task_title;

SELECT * FROM employee_info WHERE gender = 'F' AND status = 'Active';
SELECT * FROM department_info WHERE budget > 1000000 OR location = 'Delhi';

SELECT * FROM employee_info WHERE dept_id IN (1, 2);
SELECT * FROM project_info WHERE status NOT IN ('Completed', 'On Hold');

SELECT * FROM employee_info WHERE employee_name LIKE 'A%';
SELECT * FROM project_info WHERE client_name NOT LIKE '%Ltd';

SELECT dept_id, COUNT(*) AS emp_count FROM employee_info GROUP BY dept_id;

SELECT dept_id, AVG(salary) AS avg_salary 
FROM employee_info 
GROUP BY dept_id 
HAVING AVG(salary) > 50000;

SELECT MAX(salary), MIN(salary), SUM(salary), AVG(salary) FROM employee_info;

