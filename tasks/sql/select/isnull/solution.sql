-- Task 1
-- Retrieve details of customers with their names and birthdays. Replace NULL values in the 'birthday' column with 'Not Available'.
SELECT customerID, firstname, lastname, ISNULL(birthday, 'Not Available') AS birthday
FROM table_customer;

-- Task 2
-- Get the details of courses along with their names and coaches. Display 'No Coach' for courses without assigned coaches.
SELECT c.courseID, c.name, c.coachID, ISNULL(tc.title, 'No Coach') AS coach_title
FROM table_course c
LEFT JOIN table_coach tc ON c.coachID = tc.coachID;

-- Task 3
-- Display the topic details along with the description. If the description is NULL, replace it with 'No Description'.
SELECT topicID, topic, ISNULL(description, 'No Description') AS description
FROM table_topics;
