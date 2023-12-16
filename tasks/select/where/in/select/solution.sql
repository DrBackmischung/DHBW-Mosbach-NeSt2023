-- Task 1
-- Find all courses with a coach who has qualifications.
SELECT *
FROM table_course AS c
WHERE c.coachID IN (
  SELECT coachID
  FROM table_coach
  WHERE qualifications IS NOT NULL
);

-- Task 2
-- Find all persons who visited courses with missed days greater than 3.
SELECT *
FROM table_person AS p
WHERE p.personalID IN (
  SELECT personalID
  FROM table_visits
  WHERE missed_days > 3
);

-- Task 3
-- Find all topics with courses starting after '2023-01-01'.
SELECT *
FROM table_topics AS t
WHERE t.topicID IN (
  SELECT topicID
  FROM table_course
  WHERE start_date > '2023-01-01'
);
