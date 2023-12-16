-- Task 1
-- Find all courses with a price less than all visit payments.
SELECT *
FROM table_course AS c
WHERE c.price < ALL (
  SELECT v.payed
  FROM table_visits AS v
);

-- Task 2
-- Find all persons with a birthday less than all coach start dates.
SELECT *
FROM table_person AS p
WHERE p.birthday < ALL (
  SELECT c.start_date
  FROM table_coach AS c
);

-- Task 3
-- Find all topics with a duration less than all course actual durations.
SELECT *
FROM table_topics AS t
WHERE t.duration < ALL (
  SELECT tc.actual_duration
  FROM table_course AS tc
);
