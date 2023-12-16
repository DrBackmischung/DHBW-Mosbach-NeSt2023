-- Task 1
-- Create a view named 'ActiveCourses' that displays course details for courses that have not ended yet.
CREATE VIEW ActiveCourses AS
SELECT * FROM table_course
WHERE end_date >= CURDATE();

-- Task 2
-- Create a view named 'TopPayingCustomers' that lists customer information and their total payments.
CREATE VIEW TopPayingCustomers AS
SELECT c.*, SUM(v.payed) AS total_payments
FROM table_visits v
JOIN table_customer c ON v.customerID = c.customerID
GROUP BY c.customerID
ORDER BY total_payments DESC;

-- Task 3
-- Create a view named 'ExperiencedCoaches' that shows coaches with more than 10 years of experience.
CREATE VIEW ExperiencedCoaches AS
SELECT * FROM table_coach
WHERE DATEDIFF(CURDATE(), start_date) > 3650;

-- Task 4
-- Create a view named 'HighDiscountVisits' that displays visits with a discount greater than 15%.
CREATE VIEW HighDiscountVisits AS
SELECT * FROM table_visits
WHERE discount > 15;

-- Task 5
-- Create a view named 'JavaCourses' that shows details of courses related to Java programming.
CREATE VIEW JavaCourses AS
SELECT * FROM table_course
WHERE topicID = (SELECT topicID FROM table_topics WHERE topic = 'Java');
