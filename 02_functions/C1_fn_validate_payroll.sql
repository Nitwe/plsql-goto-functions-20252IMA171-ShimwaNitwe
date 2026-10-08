-- C1: Payroll Validator Function
-- Returns VALID when the employee has a positive salary and a department.
-- Returns INVALID with a reason when validation fails.

CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_employee_id IN NUMBER
) RETURN VARCHAR2
IS
    v_salary employees.monthly_salary%TYPE;
    v_department_id employees.department_id%TYPE;
BEGIN
    SELECT monthly_salary, department_id
    INTO v_salary, v_department_id
    FROM employees
    WHERE employee_id = p_employee_id;

    IF v_salary IS NULL OR v_salary <= 0 THEN
        RETURN 'INVALID: salary must be greater than zero';
    ELSIF v_department_id IS NULL THEN
        RETURN 'INVALID: department is required';
    ELSE
        RETURN 'VALID';
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'INVALID: employee not found';
    WHEN OTHERS THEN
        RETURN 'INVALID: ' || SQLERRM;
END;
/
