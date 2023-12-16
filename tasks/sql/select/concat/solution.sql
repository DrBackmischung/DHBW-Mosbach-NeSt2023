-- Task 1
-- Concatenate the first and last name of each person with a space in between, alias the result as 'full_name'.
SELECT personalID, CONCAT(firstname, ' ', lastname) AS full_name
FROM table_person;

-- Task 2
-- Concatenate the city and street of each person's address, alias the result as 'full_address'.
SELECT personalID, CONCAT(city, ', ', street) AS full_address
FROM table_person;

-- Task 3
-- Concatenate the name and company of each coach with a hyphen in between, alias the result as 'coach_info'.
SELECT coachID, CONCAT(name, ' - ', company) AS coach_info
FROM table_course;
