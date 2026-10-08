-- A4: Rewrite A2 without GOTO
-- Demonstrates that normal IF/ELSE logic is often clearer than GOTO.

SET SERVEROUTPUT ON;

DECLARE
    v_employee_id employees.employee_id%TYPE := 102;
    v_salary employees.monthly_salary%TYPE;
BEGIN
    SELECT monthly_salary
    INTO v_salary
    FROM employees
    WHERE employee_id = v_employee_id;

    IF v_salary < 300000 THEN
        DBMS_OUTPUT.PUT_LINE('Employee ' || v_employee_id ||
                             ' needs a salary review. Monthly salary: ' ||
                             v_salary || ' RWF.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Employee ' || v_employee_id ||
                             ' has an acceptable salary. Monthly salary: ' ||
                             v_salary || ' RWF.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('A4 completed.');

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee was not found.');
END;
/
