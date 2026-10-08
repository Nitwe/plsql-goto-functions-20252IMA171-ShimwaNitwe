-- B5: Use stored functions in a SELECT statement

SET SERVEROUTPUT ON;

SELECT
    employee_id,
    first_name || ' ' || last_name AS employee_name,
    monthly_salary,
    fn_annual_salary(monthly_salary) AS annual_salary,
    fn_years_of_service(hire_date) AS years_of_service,
    fn_calculate_tax(monthly_salary) AS monthly_tax,
    fn_dept_name(department_id) AS department_name
FROM employees
ORDER BY employee_id;
