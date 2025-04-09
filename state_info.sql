CREATE DATABASE my_state_info;

USE my_state_info;

CREATE TABLE state_info (
    state_id INT PRIMARY KEY,
    state_name VARCHAR(50),
    country VARCHAR(50),
    population BIGINT,
    area FLOAT,
    capital VARCHAR(50)
);

INSERT INTO state_info VALUES
(1, 'Karnataka', 'India', 68000000, 191791, 'Bangalore'),
(2, 'Maharashtra', 'India', 124000000, 307713, 'Mumbai'),
(3, 'California', 'USA', 39500000, 423967, 'Sacramento'),
(4, 'New York', 'USA', 19400000, 141297, 'Albany'),
(5, 'Bavaria', 'Germany', 13000000, 70542, 'Munich'),
(6, 'Ontario', 'Canada', 14600000, 1076395, 'Toronto'),
(7, 'Tokyo', 'Japan', 14000000, 2194, 'Tokyo'),
(8, 'Seoul', 'South Korea', 9600000, 605, 'Seoul'),
(9, 'Moscow', 'Russia', 12600000, 2561, 'Moscow'),
(10, 'Ile-de-France', 'France', 12000000, 12012, 'Paris'),
(11, 'Gauteng', 'South Africa', 15000000, 18178, 'Johannesburg'),
(12, 'Mexico City', 'Mexico', 9200000, 1485, 'Mexico City'),
(13, 'Lombardy', 'Italy', 10000000, 23894, 'Milan'),
(14, 'New South Wales', 'Australia', 8200000, 801150, 'Sydney'),
(15, 'Buenos Aires', 'Argentina', 17000000, 307571, 'Buenos Aires');



SHOW TABLES;
SELECT * FROM state_info;


