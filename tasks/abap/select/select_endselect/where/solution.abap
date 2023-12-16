" Task 1: Select all records from lt_person table where birthday is greater than or equal to '19900101'
DATA(lt_result_task4) = VALUE ty_person_tab( ).
SELECT * FROM lt_person WHERE birthday >= '19900101' INTO @DATA(ls_table_row).
  " Do something
  APPEND ls_table_row TO lt_result_task4.
ENDSELECT.

" Task 2: Select lastname, city from lt_person table where zipcode is '12345'
DATA(lt_result_task5) = VALUE ty_person_tab( ).
SELECT lastname, city FROM lt_person WHERE zipcode = '12345' INTO @DATA(ls_table_row).
  " Do something
  APPEND ls_table_row TO lt_result_task5.
ENDSELECT.

" Task 3: Select all fields from lt_coach table where start_date is less than or equal to '20230101'
DATA(lt_result_task6) = VALUE ty_coach_tab( ).
SELECT * FROM lt_coach WHERE start_date <= '20230101' INTO @DATA(ls_table_row).
  " Do something
  APPEND ls_table_row TO lt_result_task6.
ENDSELECT.

" Task 4: Select qualifications from lt_coach table where cost_per_hour is greater than 50
DATA(lt_result_task7) = VALUE ty_coach_tab( ).
SELECT qualifications FROM lt_coach WHERE cost_per_hour > 50 INTO @DATA(ls_table_row).
  " Do something
  APPEND ls_table_row TO lt_result_task7.
ENDSELECT.

" Task 5: Select courseID, name from lt_course table where start_date is greater than or equal to '20230101'
DATA(lt_result_task8) = VALUE ty_course_tab( ).
SELECT courseID, name FROM lt_course WHERE start_date >= '20230101' INTO @DATA(ls_table_row).
  " Do something
  APPEND ls_table_row TO lt_result_task8.
ENDSELECT.
