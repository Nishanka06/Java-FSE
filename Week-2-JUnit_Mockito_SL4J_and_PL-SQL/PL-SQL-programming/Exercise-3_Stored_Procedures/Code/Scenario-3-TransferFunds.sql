CREATE OR REPLACE PROCEDURE TransferFunds (
    fromAccountID IN NUMBER,
    toAccountID IN NUMBER,
    amount IN NUMBER
) IS
    insufficient_balance EXCEPTION;
BEGIN
    DECLARE
        fromBalance NUMBER;
    BEGIN
        -- Get the balance of the source account
        SELECT Balance INTO fromBalance FROM Accounts WHERE AccountID = fromAccountID;

        -- Check if balance is sufficient
        IF fromBalance < amount THEN
            RAISE insufficient_balance;
        END IF;

        -- Deduct from source account
        UPDATE Accounts
        SET Balance = Balance - amount
        WHERE AccountID = fromAccountID;

        -- Add to destination account
        UPDATE Accounts
        SET Balance = Balance + amount
        WHERE AccountID = toAccountID;

        DBMS_OUTPUT.PUT_LINE('Transferred $' || amount || ' from Account ' || fromAccountID || ' to Account ' || toAccountID);
    END;
EXCEPTION
    WHEN insufficient_balance THEN
        DBMS_OUTPUT.PUT_LINE('Transfer failed: Insufficient funds in Account ' || fromAccountID);
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Transfer failed: Invalid account ID(s).');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Transfer failed due to unexpected error: ' || SQLERRM);
END;
