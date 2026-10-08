-- A1: Number Classifier
-- Demonstrates GOTO with positive, negative, and zero values.

SET SERVEROUTPUT ON;

DECLARE
    v_number NUMBER := -7;
BEGIN
    IF v_number > 0 THEN
        GOTO positive_number;
    ELSIF v_number < 0 THEN
        GOTO negative_number;
    ELSE
        GOTO zero_number;
    END IF;

    <<positive_number>>
    DBMS_OUTPUT.PUT_LINE('Number ' || v_number || ' is POSITIVE.');
    GOTO finish;

    <<negative_number>>
    DBMS_OUTPUT.PUT_LINE('Number ' || v_number || ' is NEGATIVE.');
    GOTO finish;

    <<zero_number>>
    DBMS_OUTPUT.PUT_LINE('Number is ZERO.');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('A1 completed.');
END;
/
