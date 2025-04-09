CREATE DATABASE transport_db;
USE transport_db;

CREATE TABLE bmtc_details (
    bus_no INT PRIMARY KEY,
    route_name VARCHAR(100),
    start_point VARCHAR(50),
    end_point VARCHAR(50),
    distance_km FLOAT,
    daily_trips INT,
    capacity INT,
    fare_per_km FLOAT,
    driver_name VARCHAR(50),
    depot_name VARCHAR(50)
);

CREATE TABLE tourist_info (
    tourist_id INT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(50),
    state VARCHAR(50),
    city VARCHAR(50),
    age INT,
    gender CHAR(1),
    places_visited INT,
    avg_spend_per_day FLOAT,
    days_stayed INT
);


INSERT INTO bmtc_details VALUES
(101, 'Majestic to ITPL', 'Majestic', 'ITPL', 25.5, 12, 50, 1.2, 'Ravi', 'Depot 1'),
(102, 'Majestic to Banashankari', 'Majestic', 'Banashankari', 15.0, 15, 55, 1.0, 'Manju', 'Depot 2'),
(103, 'Shivajinagar to Yelahanka', 'Shivajinagar', 'Yelahanka', 20.3, 10, 45, 1.3, 'Prakash', 'Depot 1'),
(104, 'Majestic to Whitefield', 'Majestic', 'Whitefield', 23.8, 14, 48, 1.25, 'Ramesh', 'Depot 3'),
(105, 'KR Market to Electronic City', 'KR Market', 'Electronic City', 30.0, 8, 50, 1.5, 'Arun', 'Depot 4'),
(106, 'Hebbal to Majestic', 'Hebbal', 'Majestic', 18.5, 9, 50, 1.1, 'Suresh', 'Depot 5'),
(107, 'Majestic to Kengeri', 'Majestic', 'Kengeri', 21.0, 11, 60, 1.2, 'Mahesh', 'Depot 2'),
(108, 'Shivajinagar to KR Puram', 'Shivajinagar', 'KR Puram', 19.2, 10, 52, 1.0, 'Ravi', 'Depot 1'),
(109, 'Majestic to Marathahalli', 'Majestic', 'Marathahalli', 24.6, 13, 47, 1.4, 'Kiran', 'Depot 4'),
(110, 'Banashankari to ITPL', 'Banashankari', 'ITPL', 28.9, 9, 49, 1.35, 'Deepak', 'Depot 3'),
(111, 'JP Nagar to Hebbal', 'JP Nagar', 'Hebbal', 27.5, 7, 48, 1.3, 'Rahul', 'Depot 5'),
(112, 'BTM to Silk Board', 'BTM', 'Silk Board', 12.2, 16, 42, 0.9, 'Anil', 'Depot 1'),
(113, 'Jayanagar to MG Road', 'Jayanagar', 'MG Road', 10.0, 18, 40, 1.0, 'Santosh', 'Depot 2'),
(114, 'Electronic City to Silk Board', 'Electronic City', 'Silk Board', 13.7, 14, 44, 1.2, 'Raju', 'Depot 4'),
(115, 'Whitefield to KR Market', 'Whitefield', 'KR Market', 26.0, 10, 46, 1.1, 'Manoj', 'Depot 3'),
(116, 'Majestic to Domlur', 'Majestic', 'Domlur', 22.0, 11, 50, 1.3, 'Ravi', 'Depot 1'),
(117, 'Majestic to HSR Layout', 'Majestic', 'HSR Layout', 25.4, 12, 50, 1.3, 'Vinay', 'Depot 3'),
(118, 'Silk Board to Koramangala', 'Silk Board', 'Koramangala', 8.5, 20, 38, 0.8, 'Harsha', 'Depot 5'),
(119, 'Shivajinagar to Indiranagar', 'Shivajinagar', 'Indiranagar', 14.0, 13, 45, 1.0, 'Naveen', 'Depot 1'),
(120, 'KR Market to Peenya', 'KR Market', 'Peenya', 19.5, 12, 50, 1.2, 'Ajay', 'Depot 2');


INSERT INTO tourist_info VALUES
(1, 'John Doe', 'USA', 'California', 'Los Angeles', 30, 'M', 5, 120.5, 10),
(2, 'Jane Smith', 'UK', 'England', 'London', 28, 'F', 3, 100.0, 7),
(3, 'Liu Wei', 'China', 'Guangdong', 'Guangzhou', 35, 'M', 4, 90.3, 8),
(4, 'Maria Garcia', 'Spain', 'Madrid', 'Madrid', 32, 'F', 6, 110.2, 9),
(5, 'Ahmed Khan', 'UAE', 'Dubai', 'Dubai', 40, 'M', 2, 150.0, 5),
(6, 'Anita Sharma', 'India', 'Maharashtra', 'Mumbai', 29, 'F', 7, 85.0, 12),
(7, 'Kenji Tanaka', 'Japan', 'Tokyo', 'Tokyo', 31, 'M', 6, 130.0, 6),
(8, 'Olga Ivanova', 'Russia', 'Moscow', 'Moscow', 34, 'F', 3, 105.4, 7),
(9, 'Carlos Diaz', 'Mexico', 'Jalisco', 'Guadalajara', 37, 'M', 4, 98.0, 9),
(10, 'Fatima Noor', 'Pakistan', 'Punjab', 'Lahore', 33, 'F', 5, 92.7, 10),
(11, 'Suresh Kumar', 'India', 'Karnataka', 'Bangalore', 26, 'M', 8, 70.0, 15),
(12, 'Meena Rani', 'India', 'Delhi', 'New Delhi', 27, 'F', 6, 75.5, 11),
(13, 'Tom Hanks', 'USA', 'Texas', 'Houston', 45, 'M', 2, 140.0, 4),
(14, 'Emily Clark', 'UK', 'Scotland', 'Edinburgh', 36, 'F', 4, 115.0, 7),
(15, 'Chen Li', 'China', 'Beijing', 'Beijing', 30, 'M', 5, 88.0, 6),
(16, 'Priya Patel', 'India', 'Gujarat', 'Ahmedabad', 25, 'F', 6, 60.0, 13),
(17, 'Ali Hassan', 'Saudi Arabia', 'Riyadh', 'Riyadh', 38, 'M', 3, 132.0, 5),
(18, 'Nina Müller', 'Germany', 'Bavaria', 'Munich', 29, 'F', 5, 97.3, 8),
(19, 'Lucas Rossi', 'Argentina', 'Buenos Aires', 'Buenos Aires', 33, 'M', 4, 101.0, 7),
(20, 'Sara Lee', 'South Korea', 'Seoul', 'Seoul', 28, 'F', 6, 108.0, 9);


SELECT COUNT(*) AS total_buses FROM bmtc_details;
SELECT AVG(distance_km) AS avg_distance FROM bmtc_details;
SELECT MAX(fare_per_km) AS max_fare FROM bmtc_details;
SELECT MIN(capacity) AS min_capacity FROM bmtc_details;


SELECT SUM(days_stayed) AS total_days FROM tourist_info;
SELECT AVG(avg_spend_per_day) AS avg_spend FROM tourist_info;
SELECT MAX(age) AS oldest_tourist FROM tourist_info;
SELECT MIN(places_visited) AS least_places_visited FROM tourist_info;

SELECT depot_name, AVG(distance_km) AS avg_distance
FROM bmtc_details
GROUP BY depot_name
HAVING AVG(distance_km) > 20;


SELECT gender, COUNT(*) AS total_tourists, AVG(avg_spend_per_day) AS avg_spend
FROM tourist_info
GROUP BY gender
HAVING AVG(avg_spend_per_day) > 90;
