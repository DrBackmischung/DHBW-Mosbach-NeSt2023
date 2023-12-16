-- Task 1
-- Retrieve courses with an actual duration between 20 and 30.
SELECT *
FROM table_course
WHERE actual_duration BETWEEN 20 AND 30;

-- Task 2
-- Retrieve persons born between '1980-01-01' and '1990-12-31'.
SELECT *
FROM table_person
WHERE birthday BETWEEN '1980-01-01' AND '1990-12-31';
