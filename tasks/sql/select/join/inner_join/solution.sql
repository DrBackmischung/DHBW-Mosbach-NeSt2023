-- Task 1
-- Retrieve coach names and the courses they are coaching.
SELECT tc.coachID, CONCAT(tp.firstname, ' ', tp.lastname) AS coach_name, tc.title, tc.company, tc.start_date, tc.cost_per_hour, tc.qualifications
FROM table_coach AS tc
JOIN table_person AS tp ON tc.personalID = tp.personalID;

-- Task 2
-- Retrieve course names and their coaches.
SELECT tc.courseID, tc.name AS course_name, CONCAT(tp.firstname, ' ', tp.lastname) AS coach_name, tc.start_date, tc.end_date, tc.certificate, tc.price, tc.tax
FROM table_course AS tc
JOIN table_coach AS tc2 ON tc.coachID = tc2.coachID
JOIN table_person AS tp ON tc2.personalID = tp.personalID;

-- Task 3
-- Retrieve persons and the courses they have visited.
SELECT tp.personalID, tp.firstname, tp.lastname, tv.courseID, tv.missed_days, tv.certificate, tv.self_payer, tv.payment_method, tv.discount, tv.payed
FROM table_person AS tp
JOIN table_visits AS tv ON tp.personalID = tv.topicID;

-- Task 4
-- Retrieve topics and the courses related to them.
SELECT tt.topicID, tt.topic, tt.description, tc.courseID, tc.name AS course_name, tc.start_date, tc.end_date
FROM table_topics AS tt
JOIN table_course AS tc ON tt.topicID = tc.topicID;

-- Task 5
-- Retrieve visits with course details and the person related to the visit.
SELECT tv.visitID, tv.topicID, tv.courseID, tp.firstname, tp.lastname, tv.missed_days, tv.certificate, tv.self_payer, tv.payment_method, tv.discount, tv.payed
FROM table_visits AS tv
JOIN table_person AS tp ON tv.topicID = tp.personalID;

-- Task 6
-- Retrieve coach names and their courses with a price less than 200.
SELECT tc.coachID, CONCAT(tp.firstname, ' ', tp.lastname) AS coach_name, tc2.courseID, tc2.name AS course_name, tc2.price
FROM table_coach AS tc
JOIN table_person AS tp ON tc.personalID = tp.personalID
JOIN table_course AS tc2 ON tc.coachID = tc2.coachID
WHERE tc2.price < 200;

-- Task 7
-- Retrieve persons and their visits with a discount greater than 40.
SELECT tp.personalID, tp.firstname, tp.lastname, tv.visitID, tv.courseID, tv.missed_days, tv.certificate, tv.self_payer, tv.payment_method, tv.discount, tv.payed
FROM table_person AS tp
JOIN table_visits AS tv ON tp.personalID = tv.topicID
WHERE tv.discount > 40;

-- Task 8
-- Retrieve course names and topics with a duration less than or equal to 15.
SELECT tc.courseID, tc.name AS course_name, tt.topicID, tt.topic, tt.duration
FROM table_course AS tc
JOIN table_topics AS tt ON tc.topicID = tt.topicID
WHERE tt.duration <= 15;

-- Task 9
-- Retrieve coach names and courses with a tax greater than 10.
SELECT tc.coachID, CONCAT(tp.firstname, ' ', tp.lastname) AS coach_name, tc2.courseID, tc2.name AS course_name, tc2.tax
FROM table_coach AS tc
JOIN table_person AS tp ON tc.personalID = tp.personalID
JOIN table_course AS tc2 ON tc.coachID = tc2.coachID
WHERE tc2.tax > 10;

-- Task 10
-- Retrieve visits with person details and a payment method of 'Cash'.
SELECT tv.visitID, tv.topicID, tv.courseID, tp.firstname, tp.lastname, tv.missed_days, tv.certificate, tv.self_payer, tv.payment_method, tv.discount, tv.payed
FROM table_visits AS tv
JOIN table_person AS tp ON tv.topicID = tp.personalID
WHERE tv.payment_method = 'Cash';
