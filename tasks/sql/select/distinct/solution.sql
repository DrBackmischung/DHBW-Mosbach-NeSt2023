-- Task 1
-- Retrieve distinct coach titles from the 'table_coach' table.
SELECT DISTINCT title AS distinct_coach_titles
FROM table_coach;

-- Task 2
-- Get a list of unique cities from the 'table_person' table.
SELECT DISTINCT city AS unique_cities
FROM table_person;

-- Task 3
-- Display distinct payment methods used in the 'table_visits' table.
SELECT DISTINCT payment_method AS distinct_payment_methods
FROM table_visits;

-- Task 4
-- Retrieve distinct combinations of coach titles and companies from 'table_coach'.
SELECT DISTINCT title, company
FROM table_coach;

-- Task 5
-- Get a list of unique combinations of course names and topics from 'table_course'.
SELECT DISTINCT name AS course_name, topicID
FROM table_course;

-- Task 6
-- Display distinct combinations of last names and cities from 'table_person'.
SELECT DISTINCT lastname, city
FROM table_person;
