-- Task 1
-- Task Description: Insert a new coach into the system with the following details:
--                     personalID: 45, start_date: '2023-12-15', cost_per_hour: 18,
--                     company: 'Tech Solutions', title: 'Senior Developer',
--                     qualifications: 'Java, Python, Spring'.
INSERT INTO table_coach (coachID, personalID, start_date, cost_per_hour, company, title, qualifications)
VALUES (NULL, 45, '2023-12-15', 18, 'Tech Solutions', 'Senior Developer', 'Java, Python, Spring');

-- Task 2
-- Task Description: Insert a new course named 'Web Development' with the following details:
--                     courseID: 'WD30', topicID: 6, actual_duration: 30,
--                     start_date: '2024-01-10', end_date: '2024-02-09',
--                     certificate: 'eigen', price: 300, tax: 'N', coachID: 45.
INSERT INTO table_course (courseID, name, topicID, actual_duration, start_date, end_date, certificate, price, tax, coachID)
VALUES ('WD30', 'Web Development', 6, 30, '2024-01-10', '2024-02-09', 'eigen', 300, 'N', 45);

-- Task 3
-- Task Description: Insert a new visit record for participant with personalID 15 to the course with courseID 'WD30'.
INSERT INTO table_visits (visitID, personalID, courseID, missed_days, certificate, self_payer, payment_method, discount, payed)
VALUES (NULL, 15, 'WD30', 0, 'N', 'J', 'PayPal', 0, 300);

-- Task 4
-- Task Description: Insert a new person into the system with the following details:
--                     personalID: 46, lastname: 'Schulz', firstname: 'Anna',
--                     zipcode: '30001', street: 'Main Street 45', city: 'Hannover',
--                     birthday: '1985-05-20'.
INSERT INTO table_person (personalID, lastname, firstname, zipcode, street, city, birthday)
VALUES (46, 'Schulz', 'Anna', '30001', 'Main Street 45', 'Hannover', '1985-05-20');

-- Task 5
-- Task Description: Insert a new topic named 'SQL Advanced' with the following details:
--                     topicID: 12, topic: 'SQL Advanced', description: 'Advanced SQL techniques',
--                     demo: '', duration: 25, requirement: 3.
INSERT INTO table_topics (topicID, topic, description, demo, duration, requirement)
VALUES (12, 'SQL Advanced', 'Advanced SQL techniques', '', 25, 3);
