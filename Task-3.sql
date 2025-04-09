CREATE DATABASE sports_db;
USE sports_db;

CREATE TABLE Cricket_info (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(100),
    age INT,
    country VARCHAR(50),
    matches_played INT,
    runs INT,
    wickets INT,
    batting_style VARCHAR(50),
    bowling_style VARCHAR(50),
    rating FLOAT
);

CREATE TABLE FootBall_info (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(100),
    age INT,
    country VARCHAR(50),
    matches_played INT,
    goals INT,
    assists INT,
    position VARCHAR(50),
    club VARCHAR(100),
    rating FLOAT
);

INSERT INTO Cricket_info VALUES 
(1, 'Virat Kohli', 35, 'India', 275, 13000, 4, 'Right-hand', 'Right-arm', 9.5),
(2, 'Rohit Sharma', 36, 'India', 240, 11000, 1, 'Right-hand', 'Right-arm', 8.9),
(3, 'Steve Smith', 34, 'Australia', 180, 9500, 17, 'Right-hand', 'Right-arm', 8.7),
(4, 'Kane Williamson', 33, 'New Zealand', 200, 8900, 6, 'Right-hand', 'Right-arm', 8.8),
(5, 'Joe Root', 33, 'England', 220, 10000, 25, 'Right-hand', 'Off-spin', 9.0),
(6, 'Babar Azam', 29, 'Pakistan', 160, 7200, 0, 'Right-hand', 'None', 8.5),
(7, 'Ben Stokes', 32, 'England', 140, 6000, 75, 'Left-hand', 'Medium-fast', 8.6),
(8, 'Shakib Al Hasan', 35, 'Bangladesh', 210, 7000, 130, 'Left-hand', 'Spin', 8.9),
(9, 'David Warner', 37, 'Australia', 230, 9600, 0, 'Left-hand', 'None', 8.4),
(10, 'Rashid Khan', 26, 'Afghanistan', 100, 1000, 180, 'Right-hand', 'Leg-spin', 9.1),
(11, 'KL Rahul', 32, 'India', 150, 5500, 1, 'Right-hand', 'None', 7.9),
(12, 'Jasprit Bumrah', 30, 'India', 130, 500, 150, 'Right-hand', 'Fast', 9.3),
(13, 'Trent Boult', 34, 'New Zealand', 140, 300, 190, 'Left-hand', 'Fast', 8.7),
(14, 'Pat Cummins', 31, 'Australia', 145, 800, 160, 'Right-hand', 'Fast', 8.8),
(15, 'Shaheen Afridi', 24, 'Pakistan', 100, 400, 120, 'Left-hand', 'Fast', 8.6);


INSERT INTO FootBall_info VALUES
(1, 'Lionel Messi', 37, 'Argentina', 900, 800, 350, 'Forward', 'Inter Miami', 9.8),
(2, 'Cristiano Ronaldo', 39, 'Portugal', 1050, 850, 250, 'Forward', 'Al Nassr', 9.7),
(3, 'Neymar Jr', 33, 'Brazil', 750, 400, 180, 'Forward', 'Al Hilal', 9.2),
(4, 'Kylian Mbappe', 26, 'France', 400, 270, 120, 'Forward', 'PSG', 9.5),
(5, 'Robert Lewandowski', 35, 'Poland', 800, 600, 100, 'Striker', 'Barcelona', 9.3),
(6, 'Luka Modric', 38, 'Croatia', 850, 130, 200, 'Midfielder', 'Real Madrid', 8.9),
(7, 'Kevin De Bruyne', 34, 'Belgium', 700, 150, 250, 'Midfielder', 'Man City', 9.4),
(8, 'Virgil van Dijk', 33, 'Netherlands', 600, 50, 30, 'Defender', 'Liverpool', 8.8),
(9, 'Erling Haaland', 24, 'Norway', 250, 210, 40, 'Striker', 'Man City', 9.6),
(10, 'Sadio Mane', 32, 'Senegal', 650, 160, 110, 'Winger', 'Al Nassr', 8.7),
(11, 'Sergio Ramos', 38, 'Spain', 950, 100, 70, 'Defender', 'Sevilla', 8.9),
(12, 'Harry Kane', 31, 'England', 700, 350, 100, 'Striker', 'Bayern Munich', 9.1),
(13, 'Mohamed Salah', 33, 'Egypt', 600, 250, 90, 'Winger', 'Liverpool', 9.0),
(14, 'Pedri', 21, 'Spain', 180, 30, 50, 'Midfielder', 'Barcelona', 8.5),
(15, 'Toni Kroos', 34, 'Germany', 850, 80, 160, 'Midfielder', 'Real Madrid', 8.8);


SELECT * FROM Cricket_info;
SELECT * FROM FootBall_info;


ALTER TABLE Cricket_info ADD COLUMN team VARCHAR(50);
ALTER TABLE Cricket_info ADD COLUMN debut_year INT;

ALTER TABLE FootBall_info ADD COLUMN team VARCHAR(50);
ALTER TABLE FootBall_info ADD COLUMN debut_year INT;

ALTER TABLE Cricket_info
RENAME COLUMN player_name TO cricketer_name,
RENAME COLUMN rating TO performance_rating,
RENAME COLUMN runs TO total_runs,
RENAME COLUMN wickets TO total_wickets;

ALTER TABLE FootBall_info
RENAME COLUMN player_name TO footballer_name,
RENAME COLUMN rating TO performance_rating,
RENAME COLUMN goals TO total_goals,
RENAME COLUMN assists TO total_assists;


UPDATE Cricket_info SET team = 'India', debut_year = 2008 WHERE country = 'India' AND age > 30;
UPDATE Cricket_info SET team = 'Australia', debut_year = 2010 WHERE country = 'Australia' OR total_runs > 9000;
UPDATE Cricket_info SET team = 'NZ', debut_year = 2012 WHERE cricketer_name IN ('Kane Williamson', 'Trent Boult');
UPDATE Cricket_info SET team = 'Pakistan', debut_year = 2016 WHERE cricketer_name NOT IN ('Virat Kohli', 'Rohit Sharma');
UPDATE Cricket_info SET performance_rating = 9.0 WHERE cricketer_name = 'Jasprit Bumrah';


UPDATE FootBall_info SET team = 'Argentina', debut_year = 2006 WHERE country = 'Argentina' AND age > 30;
UPDATE FootBall_info SET team = 'Portugal', debut_year = 2003 WHERE footballer_name = 'Cristiano Ronaldo';
UPDATE FootBall_info SET team = 'France', debut_year = 2015 WHERE footballer_name IN ('Mbappe', 'Kante');
UPDATE FootBall_info SET team = 'Man City', debut_year = 2020 WHERE footballer_name NOT IN ('Messi', 'Ronaldo');
UPDATE FootBall_info SET performance_rating = 9.9 WHERE footballer_name = 'Erling Haaland';

DELETE FROM Cricket_info WHERE age > 36;
DELETE FROM Cricket_info WHERE cricketer_name = 'Shaheen Afridi';
DELETE FROM Cricket_info WHERE country = 'Bangladesh';

DELETE FROM FootBall_info WHERE footballer_name = 'Neymar Jr';
DELETE FROM FootBall_info WHERE age < 25;
DELETE FROM FootBall_info WHERE performance_rating < 8.6;

