-- Task 1
-- Calculate the average duration of all topics.
SELECT AVG(duration) AS average_duration
FROM table_topics;

-- Task 2
-- Calculate the average cost per hour for coaches with a cost per hour greater than 15.
SELECT AVG(cost_per_hour) AS average_cost_per_hour
FROM table_coach
WHERE cost_per_hour > 15;

-- Task 3
-- Calculate the average price of courses with a price less than 250.
SELECT AVG(price) AS average_price
FROM table_course
WHERE price < 250;

-- Task 4
-- Calculate the average discount for visits with a discount greater than 40.
SELECT AVG(discount) AS average_discount
FROM table_visits
WHERE discount > 40;

-- Task 5
-- Calculate the average tax for courses with a tax less than 10.
SELECT AVG(tax) AS average_tax
FROM table_course
WHERE tax < 10;
