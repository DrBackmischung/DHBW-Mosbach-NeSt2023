-- Task 1
-- Find the latest end date of all courses.
SELECT MAX(end_date) AS latest_end_date
FROM table_course;

-- Task 2
-- Find the largest cost per hour among all coaches.
SELECT MAX(cost_per_hour) AS largest_cost_per_hour
FROM table_coach;

-- Task 3
-- Find the maximum price among all courses.
SELECT MAX(price) AS maximum_price
FROM table_course;
