-- Test script for B1-B4 functions

SET SERVEROUTPUT ON;

DECLARE
    v_annual NUMBER;
    v_years NUMBER;
    v_tax NUMBER;
    v_department VARCHAR2(100);
BEGIN
    v_annual := fn_annual_salary(300000);
    DBMS_OUTPUT.PUT_LINE('Annual salary test: ' || v_annual || ' RWF');

    v_years := fn_years_of_service(DATE '2021-01-01');
    DBMS_OUTPUT.PUT_LINE('Years of service test: ' || v_years);

    v_tax := fn_calculate_tax(300000);
    DBMS_OUTPUT.PUT_LINE('Tax test: ' || v_tax || ' RWF');

    v_department := fn_dept_name(10);
    DBMS_OUTPUT.PUT_LINE('Department test: ' || v_department);

    DBMS_OUTPUT.PUT_LINE('Function tests completed successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Function test failed: ' || SQLERRM);
END;
/
