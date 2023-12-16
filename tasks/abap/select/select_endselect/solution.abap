" Task 1: Select all records from lt_person table
DATA(lt_result_task1) = VALUE ty_person_tab( ).
SELECT * FROM lt_person INTO @DATA(ls_table_row).
  " Do something
  APPEND ls_table_row TO lt_result_task1.
ENDSELECT.

" Task 2: Select lastname, city from lt_person table
DATA(lt_result_task2) = VALUE ty_person_tab( ).
SELECT lastname, city FROM lt_person INTO @DATA(ls_table_row).
  " Do something
  APPEND ls_table_row TO lt_result_task2.
ENDSELECT.

" Task 3: Select all fields from lt_coach table where start_date is less than or equal to '20230101'
DATA(lt_result_task3) = VALUE ty_coach_tab( ).
SELECT * FROM lt_coach WHERE start_date <= '20230101' INTO @DATA(ls_table_row).
  " Do something
  APPEND ls_table_row TO lt_result_task3.
ENDSELECT.
