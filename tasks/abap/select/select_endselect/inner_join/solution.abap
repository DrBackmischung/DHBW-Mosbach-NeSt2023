" Task 1: Select all records from lt_person and lt_coach tables where personalID matches and order by lastname
DATA(lt_result_task12) = VALUE ty_person_tab( ).
SELECT * FROM lt_person AS p INNER JOIN lt_coach AS c ON p.personalID = c.personalID ORDER BY p.lastname INTO @DATA(ls_table_row).
  " Do something
  APPEND ls_table_row TO lt_result_task12.
ENDSELECT.

" Task 2: Select lastname, city from lt_person and lt_coach tables where personalID matches and order by firstname
DATA(lt_result_task13) = VALUE ty_person_tab( ).
SELECT lastname, city FROM lt_person AS p INNER JOIN lt_coach AS c ON p.personalID = c.personalID ORDER BY p.firstname INTO @DATA(ls_table_row).
  " Do something
  APPEND ls_table_row TO lt_result_task13.
ENDSELECT.

" Task 3: Select all fields from lt_course and lt_visits tables where courseID matches and order by missed_days descending
DATA(lt_result_task14) = VALUE ty_course_tab( ).
SELECT * FROM lt_course AS c INNER JOIN lt_visits AS v ON c.courseID = v.courseID ORDER BY v.missed_days DESCENDING INTO @DATA(ls_table_row).
  " Do something
  APPEND ls_table_row TO lt_result_task14.
ENDSELECT.
