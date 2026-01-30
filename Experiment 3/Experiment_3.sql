DECLARE

emp_id NUMBER:=101;
emp_name VARCHAR2(20):='Punya Arora';
emp_salary NUMBER:=10000;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_id || ', Employee Name: ' || emp_name || ', Employee Salary: ' || emp_salary);
END;