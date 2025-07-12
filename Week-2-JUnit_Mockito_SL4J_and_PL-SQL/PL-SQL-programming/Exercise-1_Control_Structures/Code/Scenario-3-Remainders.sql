BEGIN
    FOR loan IN (
        SELECT l.LoanID, l.DueDate, c.Name, c.CustomerID
        FROM Loans l
        JOIN Customers c ON l.CustomerID = c.CustomerID
        WHERE l.DueDate BETWEEN SYSDATE AND SYSDATE + 30
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE('Reminder: Loan ID ' || loan.LoanID || ' for Customer ' || loan.Name || 
                             ' (ID: ' || loan.CustomerID || ') is due on ' || TO_CHAR(loan.DueDate, 'DD-MON-YYYY'));
    END LOOP;
END;
