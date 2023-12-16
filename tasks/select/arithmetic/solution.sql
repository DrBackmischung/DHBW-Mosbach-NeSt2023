-- Task 1
-- Calculate the total cost for each visit, including discounts, and alias the result as 'total_cost'.
SELECT visitID, (price - discount) AS total_cost
FROM table_visits;

-- Task 2
-- Calculate the average price per hour for each coach, alias the result as 'avg_price_per_hour'.
SELECT coachID, AVG(cost_per_hour) AS avg_price_per_hour
FROM table_coach
GROUP BY coachID;

-- Task 3
-- Calculate the total duration for each course in hours, alias the result as 'total_duration_hours'.
SELECT courseID, actual_duration * 2 AS total_duration_hours
FROM table_course;

-- Task 4
-- Calculate the age of each person, alias the result as 'age'.
SELECT personalID, TIMESTAMPDIFF(YEAR, birthday, CURDATE()) AS age
FROM table_person;

-- Task 5
-- Calculate the total paid amount for each visit, alias the result as 'total_paid'.
SELECT visitID, payed + discount AS total_paid
FROM table_visits;
