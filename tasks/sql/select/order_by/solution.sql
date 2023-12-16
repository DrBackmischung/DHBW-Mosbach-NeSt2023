-- Task 1
-- Retrieve coaches ordered by start date in ascending order.
SELECT coachID, start_date, firstname, lastname 
FROM table_coach
ORDER BY start_date;

-- Task 2
-- Retrieve courses with prices less than 300, ordered by price in descending order.
SELECT courseID, name, price
FROM table_course
WHERE price < 300
ORDER BY price DESC;

-- Task 3
-- Retrieve persons born after 1990, ordered by birthday in ascending order.
SELECT personalID, firstname, lastname, birthday
FROM table_person
WHERE birthday > '1990-01-01'
ORDER BY birthday;

-- Task 4
-- Retrieve visits with a discount greater than 50, ordered by discount in descending order.
SELECT visitID, discount, payed
FROM table_visits
WHERE discount > 50
ORDER BY discount DESC;

-- Task 5
-- Retrieve topics with duration less than or equal to 20, ordered by duration in ascending order.
SELECT topicID, topic, duration
FROM table_topics
WHERE duration <= 20
ORDER BY duration;
