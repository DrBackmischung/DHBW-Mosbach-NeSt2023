-- Task 1
-- Retrieve all records from the 'table_person' table.
SELECT * FROM table_person;

-- Task 2
-- Retrieve coach names and their qualifications from the 'table_coach' table.
SELECT coachID, firstname, lastname, qualifications
FROM table_coach;

-- Task 3
-- Retrieve course names and start dates from the 'table_course' table.
SELECT courseID, name, start_date
FROM table_course;

-- Task 4
-- Retrieve topics and descriptions from the 'table_topics' table.
SELECT topicID, topic, description
FROM table_topics;

-- Task 5
-- Retrieve visit details from the 'table_visits' table.
SELECT visitID, courseID, missed_days, certificate, self_payer, payment_method
FROM table_visits;
