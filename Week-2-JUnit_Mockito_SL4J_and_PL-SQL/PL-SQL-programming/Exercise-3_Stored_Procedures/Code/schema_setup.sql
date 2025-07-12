CREATE TABLE SavingsAccounts (
    AccountID     NUMBER PRIMARY KEY,
    CustomerID    NUMBER,
    Balance       NUMBER(10,2)
);

CREATE TABLE Employees (
    EmployeeID    NUMBER PRIMARY KEY,
    Name          VARCHAR2(100),
    Department    VARCHAR2(50),
    Salary        NUMBER(10,2)
);


CREATE TABLE Accounts (
    AccountID     NUMBER PRIMARY KEY,
    CustomerID    NUMBER,
    Balance       NUMBER(10,2)
);

INSERT INTO SavingsAccounts (AccountID, CustomerID, Balance) VALUES (101, 1, 5000);
INSERT INTO SavingsAccounts (AccountID, CustomerID, Balance) VALUES (102, 2, 8500);
INSERT INTO SavingsAccounts (AccountID, CustomerID, Balance) VALUES (103, 3, 12000);
INSERT INTO SavingsAccounts (AccountID, CustomerID, Balance) VALUES (104, 4, 3000);

INSERT INTO Employees (EmployeeID, Name, Department, Salary) VALUES (201, 'Alice', 'Finance', 50000);
INSERT INTO Employees (EmployeeID, Name, Department, Salary) VALUES (202, 'Bob', 'IT', 60000);
INSERT INTO Employees (EmployeeID, Name, Department, Salary) VALUES (203, 'Charlie', 'Finance', 55000);
INSERT INTO Employees (EmployeeID, Name, Department, Salary) VALUES (204, 'Diana', 'HR', 48000);

INSERT INTO Accounts (AccountID, CustomerID, Balance) VALUES (301, 1, 10000);
INSERT INTO Accounts (AccountID, CustomerID, Balance) VALUES (302, 2, 7000);
INSERT INTO Accounts (AccountID, CustomerID, Balance) VALUES (303, 3, 3000);
INSERT INTO Accounts (AccountID, CustomerID, Balance) VALUES (304, 4, 15000);

COMMIT;