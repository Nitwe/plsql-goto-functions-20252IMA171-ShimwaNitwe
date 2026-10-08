-- B1: Annual Salary Function

CREATE OR REPLACE FUNCTION fn_annual_salary (
    p_monthly_salary IN NUMBER
) RETURN NUMBER
IS
BEGIN
    IF p_monthly_salary IS NULL OR p_monthly_salary < 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Monthly salary cannot be negative or NULL.');
    END IF;

    RETURN p_monthly_salary * 12;
END;
/
