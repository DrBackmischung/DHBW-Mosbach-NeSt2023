-- Task 1
-- Find all courses with a price greater than any visit payment.
SELECT *
FROM table_course AS c
WHERE c.price > ANY (
  SELECT v.payed
  FROM table_visits AS v
);

-- Task 2
-- Find all persons with a birthday greater than any coach start date.
SELECT *
FROM table_person AS p
WHERE p.birthday > ANY (
  SELECT c.start_date
  FROM table_coach AS c
);

-- Task 3
-- Find all topics with a duration greater than any course actual duration.
SELECT *
FROM table_topics AS t
WHERE t.duration > ANY (
  SELECT tc.actual_duration
  FROM table_course AS tc
);
