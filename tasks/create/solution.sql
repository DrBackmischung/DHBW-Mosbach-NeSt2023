-- Task 1
-- Task Description: Create a new table named 'table_location' with the following columns:
--                     locationID (int, primary key), city (varchar(50)), country (varchar(50)).
CREATE TABLE table_location (
    locationID INT PRIMARY KEY,
    city VARCHAR(50),
    country VARCHAR(50)
);

-- Task 2
-- Task Description: Create a new table named 'table_event' with the following columns:
--                     eventID (char(10), primary key), event_name (varchar(50)),
--                     event_date (date), locationID (int, foreign key).
CREATE TABLE table_event (
    eventID CHAR(10) PRIMARY KEY,
    event_name VARCHAR(50),
    event_date DATE,
    locationID INT,
    FOREIGN KEY (locationID) REFERENCES table_location(locationID)
);

-- Task 3
-- Task Description: Create a new database named 'events_database'.
CREATE DATABASE events_database;
