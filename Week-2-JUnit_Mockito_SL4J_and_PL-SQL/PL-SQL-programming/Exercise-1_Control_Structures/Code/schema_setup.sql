CREATE TABLE Customers (
    CustomerID      NUMBER PRIMARY KEY,
    Name            VARCHAR2(100),
    Age             NUMBER,
    Balance         NUMBER(10,2),
    IsVIP           VARCHAR2(5) DEFAULT 'FALSE'
);

CREATE TABLE Loans (
    LoanID          NUMBER PRIMARY KEY,
    CustomerID      NUMBER REFERENCES Customers(CustomerID),
    InterestRate    NUMBER(5,2),
    DueDate         DATE
);


INSERT INTO Customers (CustomerID, Name, Age, Balance, IsVIP) VALUES (1, 'Alice Johnson', 65, 8000, 'FALSE');
INSERT INTO Customers (CustomerID, Name, Age, Balance, IsVIP) VALUES (2, 'Bob Smith', 45, 12000, 'FALSE');
INSERT INTO Customers (CustomerID, Name, Age, Balance, IsVIP) VALUES (3, 'Charlie Brown', 70, 15000, 'FALSE');
INSERT INTO Customers (CustomerID, Name, Age, Balance, IsVIP) VALUES (4, 'Diana King', 30, 9500, 'FALSE');
INSERT INTO Customers (CustomerID, Name, Age, Balance, IsVIP) VALUES (5, 'Edward White', 61, 11000, 'FALSE');


INSERT INTO Loans (LoanID, CustomerID, InterestRate, DueDate) VALUES (101, 1, 7.5, SYSDATE + 10);
INSERT INTO Loans (LoanID, CustomerID, InterestRate, DueDate) VALUES (102, 2, 6.8, SYSDATE + 40);
INSERT INTO Loans (LoanID, CustomerID, InterestRate, DueDate) VALUES (103, 3, 8.0, SYSDATE + 5);
INSERT INTO Loans (LoanID, CustomerID, InterestRate, DueDate) VALUES (104, 4, 9.2, SYSDATE + 25);
INSERT INTO Loans (LoanID, CustomerID, InterestRate, DueDate) VALUES (105, 5, 6.5, SYSDATE + 20);

COMMIT;