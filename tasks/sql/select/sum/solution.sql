-- Task 1
-- Calculate the total duration of each topic.
SELECT topicID, topic, SUM(duration) AS total_duration
FROM table_topics
GROUP BY topicID, topic;

-- Task 2
-- Calculate the total cost per hour for each coach.
SELECT tc.coachID, CONCAT(tp.firstname, ' ', tp.lastname) AS coach_name, SUM(tc.cost_per_hour) AS total_cost_per_hour
FROM table_coach AS tc
JOIN table_person AS tp ON tc.personalID = tp.personalID
GROUP BY tc.coachID, coach_name;

-- Task 3
-- Calculate the total price for each course category.
SELECT category, SUM(price) AS total_price
FROM table_course
GROUP BY category;

-- Task 4
-- Calculate the total discount for each payment method.
SELECT payment_method, SUM(discount) AS total_discount
FROM table_visits
GROUP BY payment_method;

-- Task 5
-- Calculate the total tax for each coach.
SELECT tc.coachID, CONCAT(tp.firstname, ' ', tp.lastname) AS coach_name, SUM(tc2.tax) AS total_tax
FROM table_coach AS tc
JOIN table_course AS tc2 ON tc.coachID = tc2.coachID
JOIN table_person AS tp ON tc.personalID = tp.personalID
GROUP BY tc.coachID, coach_name;
