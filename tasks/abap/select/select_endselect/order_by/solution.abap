" Task 1: Select all records from lt_person table where birthday is greater than or equal to '19900101' and order by lastname
DATA(lt_result_task9) = VALUE ty_person_tab( ).
SELECT * FROM lt_person WHERE birthday >= '19900101' ORDER BY lastname INTO @DATA(ls_table_row).
  " Do something
  APPEND ls_table_row TO lt_result_task9.
ENDSELECT.

" Task 2: Select lastname, city from lt_person table where zipcode is '12345' and order by firstname
DATA(lt_result_task10) = VALUE ty_person_tab( ).
SELECT lastname, city FROM lt_person WHERE zipcode = '12345' ORDER BY firstname INTO @DATA(ls_table_row).
  " Do something
  APPEND ls_table_row TO lt_result_task10.
ENDSELECT.

" Task 3: Select all fields from lt_coach table where start_date is less than or equal to '20230101' order by cost_per_hour descending
DATA(lt_result_task11) = VALUE ty_coach_tab( ).
SELECT * FROM lt_coach WHERE start_date <= '20230101' ORDER BY cost_per_hour DESCENDING INTO @DATA(ls_table_row).
  " Do something
  APPEND ls_table_row TO lt_result_task11.
ENDSELECT.
