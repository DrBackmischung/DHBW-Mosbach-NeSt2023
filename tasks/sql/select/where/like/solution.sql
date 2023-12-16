-- Task 1
-- Retrieve persons with a last name containing 'er'.
SELECT *
FROM table_person
WHERE lastname LIKE '%er%';

-- Task 2
-- Retrieve topics with a name starting with 'Java'.
SELECT *
FROM table_topics
WHERE name LIKE 'Java%';
