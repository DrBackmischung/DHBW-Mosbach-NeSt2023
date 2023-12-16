-- Task 1
-- Retrieve persons who visited a course using UNION.
SELECT tp.personalID, CONCAT(tp.firstname, ' ', tp.lastname) AS person_name, tv.visitID, tv.courseID
FROM table_person AS tp
JOIN table_visits AS tv ON tp.personalID = tv.topicID

UNION

SELECT tp2.personalID, CONCAT(tp2.firstname, ' ', tp2.lastname) AS person_name, tv2.visitID, tv2.courseID
FROM table_person AS tp2
JOIN table_visits AS tv2 ON tp2.personalID = tv2.topicID;

-- Task 2
-- Retrieve coaches and persons who have visited a course using UNION.
SELECT tc.coachID, CONCAT(tp.firstname, ' ', tp.lastname) AS coach_name, tc2.courseID, tc2.name AS course_name
FROM table_coach AS tc
JOIN table_person AS tp ON tc.personalID = tp.personalID
JOIN table_course AS tc2 ON tc.coachID = tc2.coachID

UNION

SELECT tc3.coachID, CONCAT(tp2.firstname, ' ', tp2.lastname) AS coach_name, tc4.courseID, tc4.name AS course_name
FROM table_coach AS tc3
JOIN table_person AS tp2 ON tc3.personalID = tp2.personalID
JOIN table_course AS tc4 ON tc3.coachID = tc4.coachID;
