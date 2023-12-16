-- Task 1
-- Count the number of courses for each coach.
SELECT coachID, COUNT(*) AS course_count
FROM table_course
GROUP BY coachID;

-- Task 2
-- Count the number of visits for each topic with more than 2 missed days.
SELECT topicID, COUNT(*) AS visit_count
FROM table_visits
WHERE missed_days > 2
GROUP BY topicID;

-- Task 3
-- Count the number of persons born in each city.
SELECT city, COUNT(*) AS person_count
FROM table_person
GROUP BY city;

-- Task 4
-- Count the number of courses started after '2023-01-01' for each coach.
SELECT c.coachID, COUNT(*) AS recent_course_count
FROM table_coach AS c
INNER JOIN table_course AS tc ON c.coachID = tc.coachID
WHERE tc.start_date > '2023-01-01'
GROUP BY c.coachID;

-- Task 5
-- Count the number of visits with a payment method other than 'Cash' for each course.
SELECT tc.courseID, COUNT(*) AS non_cash_payment_count
FROM table_course AS tc
INNER JOIN table_visits AS tv ON tc.courseID = tv.courseID
WHERE tv.payment_method <> 'Cash'
GROUP BY tc.courseID;
