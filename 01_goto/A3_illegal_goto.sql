-- A3: Illegal GOTO and Fix
-- The first block intentionally contains an illegal GOTO.
-- In PL/SQL, GOTO cannot jump into an IF/LOOP/BEGIN-END block.
-- Run the first block to observe the compile-time error, then run the fixed block.

SET SERVEROUTPUT ON;

-- INTENTIONALLY INVALID EXAMPLE:
-- This GOTO attempts to jump into the IF statement's scope.
--
-- DECLARE
-- BEGIN
--     GOTO inside_if;
--     IF 1 = 1 THEN
--         <<inside_if>>
--         DBMS_OUTPUT.PUT_LINE('Illegal jump');
--     END IF;
-- END;
-- /

-- FIXED VERSION:
DECLARE
    v_message VARCHAR2(100);
BEGIN
    IF 1 = 1 THEN
        v_message := 'The condition is true.';
    ELSE
        v_message := 'The condition is false.';
    END IF;

    DBMS_OUTPUT.PUT_LINE(v_message);
    DBMS_OUTPUT.PUT_LINE('A3 fixed successfully.');
END;
/
