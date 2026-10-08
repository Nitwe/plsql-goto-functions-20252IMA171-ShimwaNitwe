-- Test C1 payroll validation

SET SERVEROUTPUT ON;

DECLARE
    v_result VARCHAR2(200);
BEGIN
    v_result := fn_validate_payroll(101);
    DBMS_OUTPUT.PUT_LINE('Employee 101: ' || v_result);

    v_result := fn_validate_payroll(102);
    DBMS_OUTPUT.PUT_LINE('Employee 102: ' || v_result);

    v_result := fn_validate_payroll(999);
    DBMS_OUTPUT.PUT_LINE('Employee 999: ' || v_result);

    DBMS_OUTPUT.PUT_LINE('Payroll validation tests completed.');
END;
/
