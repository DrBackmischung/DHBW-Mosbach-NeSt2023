-- Task 1
-- Retrieve persons born after 1990 who are not coaches.
SELECT *
FROM table_person
WHERE EXTRACT(YEAR FROM birthday) > 1990
  AND personalID NOT IN (SELECT personalID FROM table_coach);

-- Task 2
-- Retrieve courses with a price between 100 and 200 or with a discount greater than 30.
SELECT *
FROM table_course
WHERE (price BETWEEN 100 AND 200)
   OR discount > 30;

-- Task 3
-- Retrieve persons whose name starts with 'A' or 'M'.
SELECT *
FROM table_person
WHERE firstname LIKE 'A%' OR firstname LIKE 'M%';

-- Task 4
-- Retrieve visits paid with a credit card or with a discount greater than 20.
SELECT *
FROM table_visits
WHERE payment_method = 'Credit Card'
   OR discount > 20;

-- Task 5
-- Retrieve topics that are not related to any course.
SELECT *
FROM table_topics
WHERE topicID NOT IN (SELECT topicID FROM table_course);
