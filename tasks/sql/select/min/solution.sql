-- Task 1
-- Find the earliest start date of all courses.
SELECT MIN(start_date) AS earliest_start_date
FROM table_course;

-- Task 2
-- Find the smallest cost per hour among all coaches.
SELECT MIN(cost_per_hour) AS smallest_cost_per_hour
FROM table_coach;

-- Task 3
-- Find the minimum price among all courses.
SELECT MIN(price) AS minimum_price
FROM table_course;
