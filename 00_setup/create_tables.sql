-- Employee Payroll Management System
-- Setup script

SET SERVEROUTPUT ON;

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE employees CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN RAISE; END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE departments CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN RAISE; END IF;
END;
/

CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(100) NOT NULL UNIQUE
);

CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    monthly_salary NUMBER(12,2) NOT NULL,
    hire_date DATE NOT NULL,
    department_id NUMBER NOT NULL,
    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id),
    CONSTRAINT chk_employee_salary
        CHECK (monthly_salary > 0)
);

INSERT INTO departments VALUES (10, 'IT');
INSERT INTO departments VALUES (20, 'Finance');
INSERT INTO departments VALUES (30, 'Human Resources');
INSERT INTO departments VALUES (40, 'Marketing');

INSERT INTO employees VALUES
(101, 'Alice', 'Uwase', 450000, DATE '2021-02-15', 10);

INSERT INTO employees VALUES
(102, 'Brian', 'Mugisha', 280000, DATE '2023-06-01', 20);

INSERT INTO employees VALUES
(103, 'Claudine', 'Mukamana', 650000, DATE '2019-09-10', 30);

INSERT INTO employees VALUES
(104, 'David', 'Niyonzima', 250000, DATE '2025-01-20', 40);

INSERT INTO employees VALUES
(105, 'Eric', 'Habimana', 520000, DATE '2022-04-05', 10);

COMMIT;

SELECT * FROM departments;
SELECT * FROM employees ORDER BY employee_id;
