-- Task 1
-- Retrieve the first 5 topics.
SELECT *
FROM table_topics
LIMIT 5;

-- Task 2
-- Retrieve the coaches with the highest 3 cost per hour.
SELECT *
FROM table_coach
ORDER BY cost_per_hour DESC
LIMIT 3;

-- Task 3
-- Retrieve the courses with the lowest 2 prices.
SELECT *
FROM table_course
ORDER BY price
LIMIT 2;
