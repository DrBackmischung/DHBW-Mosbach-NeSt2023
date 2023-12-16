" Task 1: Select topicID, COUNT(*) as visit_count from lt_visits table group by topicID
DATA(lt_result_task15) = VALUE ty_topics_tab( ).
SELECT topicID, COUNT(*) AS visit_count INTO @DATA(ls_table_row) FROM lt_visits GROUP BY topicID INTO @DATA(ls_table_row).
  " Do something
  APPEND ls_table_row TO lt_result_task15.
ENDSELECT.

" Task 2: Select coachID, MAX(cost_per_hour) as max_cost from lt_coach table group by coachID
DATA(lt_result_task16) = VALUE ty_coach_tab( ).
SELECT coachID, MAX(cost_per_hour) AS max_cost INTO @DATA(ls_table_row) FROM lt_coach GROUP BY coachID INTO @DATA(ls_table_row).
  " Do something
  APPEND ls_table_row TO lt_result_task16.
ENDSELECT.

" Task 3: Select topicID, SUM(duration) as total_duration from lt_topics table group by topicID
DATA(lt_result_task17) = VALUE ty_topics_tab( ).
SELECT topicID, SUM(duration) AS total_duration INTO @DATA(ls_table_row) FROM lt_topics GROUP BY topicID INTO @DATA(ls_table_row).
  " Do something
  APPEND ls_table_row TO lt_result_task17.
ENDSELECT.
