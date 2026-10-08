-- B3: Tax Calculator Function
-- Project rule: tax = 10% of monthly salary.

CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_monthly_salary IN NUMBER
) RETURN NUMBER
IS
BEGIN
    IF p_monthly_salary IS NULL OR p_monthly_salary < 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Salary cannot be negative or NULL.');
    END IF;

    RETURN ROUND(p_monthly_salary * 0.10, 2);
END;
/
