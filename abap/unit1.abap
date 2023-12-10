* Variables, Conditions and Loops
DATA lv_number TYPE i.
DATA lv_string TYPE string.
DATA lv_boolean TYPE abap_bool.
DATA lv_char TYPE c LENGTH 1.
DATA lv_numchar TYPE n LENGTH 10.

TYPE ty_name TYPE c LENGTH 30.
DATA lv_name TYPE ty_name.
TYPE ty_id TYPE n LENGTH 10.
DATA lv_id TYPE ty_id.

lv_number = 3.
lv_string = 'Hello, ABAP!'.
lv_boolean = abap_true.
lv_char = 'C'.
lv_numchar = '0000000412'

DATA(lv_number_2) = 4.
DATA(lv_result) = lv_number + lv_number_2.

WRITE: 'Calculation: ', lv_number, ' + ', lv_number_2, /, 'Result: ', lv_result, /.

IF lv_result EQ 7.
    WRITE: 'Result works!', /.
ELSEIF lv_result EQ 10.
    WRITE: 'Result is 10...somehow...', /.
ELSE.
    WRITE: 'Result wrong.', /.
ENDIF.

DO 10 TIMES.
    WRITE: 'I am in a loop: ', sy-index, /.
ENDDO.