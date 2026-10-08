# Reflection — PL/SQL GOTO Statements and Functions

## 1. What I learned about GOTO
The GOTO statement transfers control to a labelled executable statement in the same PL/SQL block. It can be useful for demonstrating direct control transfer, but excessive use can make code harder to read and maintain.

## 2. Illegal GOTO
A GOTO cannot transfer execution into certain restricted scopes such as an IF, LOOP, or another nested block. The project demonstrates an intentionally invalid example and then provides a corrected version.

## 3. Stored functions
I learned how to create reusable PL/SQL functions that accept parameters and return a value. In this project, functions calculate annual salary, years of service, tax, department names, and payroll validation results.

## 4. Exception handling
Exception handling allows a PL/SQL program to respond to errors without terminating unexpectedly. For example, the department function handles `NO_DATA_FOUND`, and the payroll validator handles an employee that does not exist.

## 5. Functions in SQL
Stored functions can be called directly inside a SELECT statement. This makes it possible to display calculated values such as annual salary, years of service, tax, and department name for several employees.

## 6. GOTO versus structured programming
The A4 program rewrites the salary review without GOTO. The IF/ELSE version is easier to follow because the condition and the resulting action are kept together. Therefore, GOTO should be used carefully and only when it provides a clear benefit.

## 7. Project conclusion
The Employee Payroll Management scenario helped me understand how PL/SQL control flow, stored functions, SQL queries, and exception handling can work together in a database application.

## AI usage note
I used an AI assistant as a learning and coding-support resource to help structure the project, explain PL/SQL concepts, and check examples. I reviewed the code and remain responsible for understanding and explaining the submitted work.
