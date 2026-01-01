-- CustomerStatusType
INSERT INTO CustomerStatusType (name, description) VALUES
('Active', 'Active customer'),
('Inactive', 'Inactive customer'),
('Blocked', 'Blocked customer'),
('Closed', 'Closed customer'),
('Pending', 'Pending approval');

-- AccountStatusType
INSERT INTO AccountStatusType (name, description) VALUES
('Active', 'Active account'),
('Inactive', 'Inactive account'),
('Blocked', 'Blocked account'),
('Closed', 'Closed account');

-- LoanStatusType
INSERT INTO LoanStatusType (name, description) VALUES
('Active', 'Active loan'),
('Closed', 'Closed loan'),
('Pending', 'Pending approval'),
('Defaulted', 'Defaulted loan'),
('Paid Off', 'Paid off loan');

-- CustomerType
INSERT INTO CustomerType (name, description) VALUES
('Individual', 'Individual customer'),
('Corporate', 'Corporate customer'),
('VIP', 'VIP customer'),
('SME', 'Small and Medium Enterprise'),
('Government', 'Government institution');

-- TransactionType
INSERT INTO TransactionType (name, description) VALUES
('Deposit', 'Deposit transaction'),
('Withdrawal', 'Withdrawal transaction'),
('Transfer', 'Transfer transaction'),
('Payment', 'Payment transaction'),
('Adjustment', 'Adjustment transaction');

-- AccountType
INSERT INTO AccountType (name, description) VALUES
('Savings', 'Savings account'),
('Checking', 'Checking account'),
('Credit', 'Credit account'),
 ('Loan', 'Loan account'),
('Investment', 'Investment account');

-- CardType
INSERT INTO CardType (name, description) VALUES
( 'Debit', 'Debit card'),
( 'Credit', 'Credit card'),
( 'Prepaid', 'Prepaid card'),
( 'Gold', 'Gold card'),
( 'Platinum', 'Platinum card');

-- LoanType
INSERT INTO LoanType (name, description) VALUES
( 'Personal', 'Personal loan'),
('Mortgage', 'Mortgage loan'),
( 'Auto', 'Auto loan'),
( 'Business', 'Business loan'),
( 'Education', 'Education loan');


-- Branch
INSERT INTO Branch (name, address, phone_number) VALUES
('Main Branch', '123 Main St, Cityville', '123-456-7890'),
( 'North Branch', '456 North St, Townsville', '456-789-0123'),
( 'South Branch', '789 South St, Villageton', '789-012-3456'),
( 'West Branch', '321 West St, Hamletown', '321-654-9870'),
( 'East Branch', '654 East St, Suburbia', '654-987-0123');

-- Employee
INSERT INTO Employee (branch_id, name, position) VALUES
(1, 'John Doe', 'Manager'),
(2, 'Jane Smith', 'Teller'),
(3, 'Bob Johnson', 'Advisor'),
(4, 'Alice Brown', 'Teller'),
(5, 'Emily Davis', 'Advisor');

-- Customer
INSERT INTO Customer (customer_type_id, name, country, city, street, phone_number, email, status) VALUES
(1, 'John Smith', 'US', 'New York', '123 Main St', '123-456-7890', 'john@example.com', 1),
(2, 'ABC Inc.', 'US', 'Los Angeles', '456 Business Blvd', '456-789-0123', 'info@abcinc.com', 1),
(3, 'Mary Johnson', 'UK', 'London', '789 High St', '789-012-3456', 'mary@example.com', 1),
(1, 'Robert Brown', 'US', 'Chicago', '321 Elm St', '321-654-9870', 'robert@example.com', 3),
(4, 'XYZ Corp.', 'US', 'Houston', '654 Corporate Ave', '654-987-0123', 'info@xyzcorp.com', 2);

-- Account
INSERT INTO Account (customer_id, branch_id, type, currency, number, balance, minimum_balance, date_opened, status) VALUES
(1, 1, 1, 'USD', 'SAV123456', 12000.00, 0, '2022-01-01', 1),
(2, 2, 2, 'USD', 'CHK789012', 50000.00, -100, '2022-02-01', 1),
(3, 3, 4, 'USD', 'LOAN345678', 25000.00, -1000, '2022-03-01', 1),
(4, 4, 1, 'USD', 'SAV901234', 8000.00, 0, '2022-04-01', 2),
(5, 5, 3, 'USD', 'CREDIT567890', 9700.00, -50, '2022-05-01', 3);

-- Loan
INSERT INTO Loan (customer_id, loan_type_id, amount, interest_rate, term, start_date, end_date, loan_status_type) VALUES
(3, 1, 20000.00, 5.0, 36, '2022-03-01', '2025-03-01', 1),
(5, 2, 10000.00, 4.5, 60, '2022-05-01', '2027-05-01', 2),
(1, 3, 5000.00, 6.0, 24, '2022-01-01', '2024-01-01', 3),
(2, 4, 30000.00, 5.5, 48, '2022-02-01', '2026-02-01', 4),
(4, 5, 15000.00, 6.5, 36, '2022-04-01', '2025-04-01', 5);

-- Card
INSERT INTO Card (account_id, customer_id, card_type_id, monthly_fee, interest_rate, expiration_date, issuance_date)
VALUES
(1, 1, 1, 5.00, 18.99, '2023-05-31', '2022-05-01'),
(2, 2, 2, 7.50, 21.50, '2024-08-31', '2022-08-15'),
(3, 3, 3, 3.50, 15.25, '2022-12-31', '2022-06-10'),
(4, 4, 1, 5.00, 18.99, '2023-10-31', '2022-09-20'),
(5, 5, 2, 6.00, 20.00, '2024-02-28', '2022-12-05');
