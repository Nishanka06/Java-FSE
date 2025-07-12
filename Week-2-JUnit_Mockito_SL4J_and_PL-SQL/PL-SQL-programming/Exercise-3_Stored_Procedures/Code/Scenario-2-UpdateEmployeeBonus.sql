CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus (
    deptName IN VARCHAR2,
    bonusPercent IN NUMBER  -- e.g., pass 10 for 10%
) IS
BEGIN
    FOR emp IN (
        SELECT EmployeeID, Salary FROM Employees
        WHERE Department = deptName
    )
    LOOP
        UPDATE Employees
        SET Salary = Salary + (Salary * bonusPercent / 100)
        WHERE EmployeeID = emp.EmployeeID;

        DBMS_OUTPUT.PUT_LINE('Bonus applied to Employee ID: ' || emp.EmployeeID);
    END LOOP;
END;
