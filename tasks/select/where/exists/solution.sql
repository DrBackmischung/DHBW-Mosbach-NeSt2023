-- Task 1
-- Find all persons who visited courses.
SELECT *
FROM table_person AS p
WHERE EXISTS (
  SELECT 1
  FROM table_visits AS v
  WHERE v.personalID = p.personalID
);

-- Task 2
-- Find all courses with visits.
SELECT *
FROM table_course AS c
WHERE EXISTS (
  SELECT 1
  FROM table_visits AS v
  WHERE v.courseID = c.courseID
);

-- Task 3
-- Find all coaches who have coached at least one course.
SELECT *
FROM table_coach AS c
WHERE EXISTS (
  SELECT 1
  FROM table_course AS tc
  WHERE tc.coachID = c.coachID
);
