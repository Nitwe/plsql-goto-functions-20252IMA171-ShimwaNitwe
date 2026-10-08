-- A2: Salary Review
-- Uses GOTO to classify an employee salary.

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
        GOTO review_salary;
    ELSE
        GOTO salary_ok;
    END IF;

    <<review_salary>>
    DBMS_OUTPUT.PUT_LINE('Employee ' || v_employee_id ||
                         ' needs a salary review. Monthly salary: ' ||
                         v_salary || ' RWF.');
    GOTO finish;

    <<salary_ok>>
    DBMS_OUTPUT.PUT_LINE('Employee ' || v_employee_id ||
                         ' has an acceptable salary. Monthly salary: ' ||
                         v_salary || ' RWF.');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('A2 completed.');

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee was not found.');
END;
/
