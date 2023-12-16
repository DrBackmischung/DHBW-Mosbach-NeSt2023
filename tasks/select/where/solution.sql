-- Task 1
-- Find all persons with the last name 'Weiss'.
SELECT *
FROM table_person AS p
WHERE p.lastname = 'Weiss';

-- Task 2
-- Find all courses with the topic 'Java'.
SELECT *
FROM table_course AS c
WHERE c.topicID = 5;

-- Task 3
-- Find all visits with a discount of 100.
SELECT *
FROM table_visits AS v
WHERE v.discount = 100;

-- Task 4
-- Find all coaches from the company 'Software Inc.'.
SELECT *
FROM table_coach AS c
WHERE c.company = 'Software Inc.';

-- Task 5
-- Find all topics with a duration of 40.
SELECT *
FROM table_topics AS t
WHERE t.duration = 40;

-- Task 6
-- Find all courses with a price of 350.
SELECT *
FROM table_course AS c
WHERE c.price = 350;

-- Task 7
-- Find all persons with the birthday '1974-03-02'.
SELECT *
FROM table_person AS p
WHERE p.birthday = '1974-03-02';

-- Task 8
-- Find all visits with a payment method of 'Card'.
SELECT *
FROM table_visits AS v
WHERE v.payment_method = 'Card';

-- Task 9
-- Find all coaches who started after '2020-01-01'.
SELECT *
FROM table_coach AS c
WHERE c.start_date > '2020-01-01';

-- Task 10
-- Find all topics with a description of 'How to use types in JavaScript'.
SELECT *
FROM table_topics AS t
WHERE t.description = 'How to use types in JavaScript';
