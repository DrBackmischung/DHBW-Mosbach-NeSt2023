-- Task 1
-- Retrieve persons who visited courses with IDs 101, 203, and 305.
SELECT *
FROM table_person
WHERE personalID IN (101, 203, 305);

-- Task 2
-- Retrieve courses with IDs 102 and 204.
SELECT *
FROM table_course
WHERE courseID IN (102, 204);
