-- Task 1
-- Retrieve persons and their visits using LEFT JOIN.
SELECT tp.personalID, CONCAT(tp.firstname, ' ', tp.lastname) AS person_name, tv.visitID, tv.courseID
FROM table_person AS tp
LEFT JOIN table_visits AS tv ON tp.personalID = tv.topicID;

-- Task 2
-- Retrieve coaches and their courses using RIGHT JOIN.
SELECT tc.coachID, CONCAT(tp.firstname, ' ', tp.lastname) AS coach_name, tc2.courseID, tc2.name AS course_name
FROM table_coach AS tc
RIGHT JOIN table_course AS tc2 ON tc.coachID = tc2.coachID;

-- Task 3
-- Retrieve topics and courses using LEFT JOIN.
SELECT tt.topicID, tt.topic, tt.description, tc.courseID, tc.name AS course_name, tc.start_date, tc.end_date
FROM table_topics AS tt
LEFT JOIN table_course AS tc ON tt.topicID = tc.topicID;
