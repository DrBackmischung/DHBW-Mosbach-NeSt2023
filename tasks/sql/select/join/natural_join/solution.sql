-- Task 1
-- Retrieve persons and their visits using NATURAL JOIN.
SELECT tp.personalID, tp.firstname, tp.lastname, tv.visitID, tv.courseID, tv.missed_days, tv.certificate, tv.self_payer, tv.payment_method, tv.discount, tv.payed
FROM table_person AS tp
NATURAL JOIN table_visits AS tv;

-- Task 2
-- Retrieve courses and their coaches using NATURAL JOIN with a WHERE clause.
SELECT tc.courseID, tc.name AS course_name, tc2.coachID, CONCAT(tp.firstname, ' ', tp.lastname) AS coach_name, tc.start_date, tc.end_date, tc.certificate, tc.price, tc.tax
FROM table_course AS tc
JOIN table_coach AS tc2 ON tc.coachID = tc2.coachID
JOIN table_person AS tp ON tc2.personalID = tp.personalID
WHERE tc.price > 100;

-- Task 3
-- Retrieve topics and courses using NATURAL JOIN with a WHERE clause.
SELECT tt.topicID, tt.topic, tt.description, tc.courseID, tc.name AS course_name, tc.start_date, tc.end_date
FROM table_topics AS tt
JOIN table_course AS tc ON tt.topicID = tc.topicID
WHERE tc.end_date > '2022-12-31';

-- Task 4
-- Retrieve visits and persons using NATURAL JOIN with a WHERE clause.
SELECT tv.visitID, tv.topicID, tv.courseID, tp.firstname, tp.lastname, tv.missed_days, tv.certificate, tv.self_payer, tv.payment_method, tv.discount, tv.payed
FROM table_visits AS tv
JOIN table_person AS tp ON tv.topicID = tp.personalID
WHERE tv.discount > 30;

-- Task 5
-- Retrieve coaches and their courses using NATURAL JOIN.
SELECT tc.coachID, CONCAT(tp.firstname, ' ', tp.lastname) AS coach_name, tc2.courseID, tc2.name AS course_name, tc2.start_date, tc2.end_date, tc2.certificate, tc2.price, tc2.tax
FROM table_coach AS tc
JOIN table_person AS tp ON tc.personalID = tp.personalID
NATURAL JOIN table_course AS tc2;
