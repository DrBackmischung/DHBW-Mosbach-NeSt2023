-- Task 1
-- Count the number of visits for each person.
SELECT tp.personalID, CONCAT(tp.firstname, ' ', tp.lastname) AS person_name, COUNT(tv.visitID) AS visit_count
FROM table_person AS tp
JOIN table_visits AS tv ON tp.personalID = tv.topicID
GROUP BY tp.personalID, person_name;

-- Task 2
-- Count the number of courses each coach is coaching.
SELECT tc.coachID, CONCAT(tp.firstname, ' ', tp.lastname) AS coach_name, COUNT(tc2.courseID) AS course_count
FROM table_coach AS tc
JOIN table_course AS tc2 ON tc.coachID = tc2.coachID
JOIN table_person AS tp ON tc.personalID = tp.personalID
GROUP BY tc.coachID, coach_name;

-- Task 3
-- Count the number of topics for each course category.
SELECT tc.category, COUNT(tt.topicID) AS topic_count
FROM table_course AS tc
JOIN table_topics AS tt ON tc.topicID = tt.topicID
GROUP BY tc.category;

-- Task 4
-- Count the number of persons born each year.
SELECT EXTRACT(YEAR FROM birthday) AS birth_year, COUNT(personalID) AS person_count
FROM table_person
GROUP BY birth_year;

-- Task 5
-- Count the number of visits for each course.
SELECT tv.courseID, tc.name AS course_name, COUNT(tv.visitID) AS visit_count
FROM table_visits AS tv
JOIN table_course AS tc ON tv.courseID = tc.courseID
GROUP BY tv.courseID, course_name;
