-- Dashboard 1 : Summary :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
-- Good Loan VS Bad Loan :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
SELECT * FROM Bank_Loan_Data

-- Good Loan :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 

--Problem 1: total percentage of good loan Application 
----------------------------------------------------------------------------------------------------------
SELECT (COUNT(CASE WHEN loan_status ='Fully Paid' OR loan_status = 'Current' THEN id END)*100.0)/ COUNT(id) As Good_loan_percentage 
FROM Bank_Loan_Data
----------------------------------------------------------------------------------------------------------

--Problem 2: Good loan Application 
----------------------------------------------------------------------------------------------------------
SELECT COUNT(id) AS Good_Loan_Applications FROM Bank_Loan_Data WHERE loan_status ='Fully Paid' OR loan_status = 'Current' 
----------------------------------------------------------------------------------------------------------

--Problem 3: Good loan Funded Amount 
----------------------------------------------------------------------------------------------------------
SELECT SUM(loan_amount) AS Good_Loan_Funded_Amount FROM Bank_Loan_Data WHERE loan_status ='Fully Paid' OR loan_status = 'Current' 
----------------------------------------------------------------------------------------------------------

--Problem 4: Good loan Funded Amount 
----------------------------------------------------------------------------------------------------------
SELECT SUM(total_payment) AS Good_Loan_Received_Amount FROM Bank_Loan_Data WHERE loan_status ='Fully Paid' OR loan_status = 'Current' 
----------------------------------------------------------------------------------------------------------


-- Bad Loan :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 

--Problem 1: total percentage of Bad loan Application 
----------------------------------------------------------------------------------------------------------
SELECT (COUNT(CASE WHEN loan_status ='Charged off' THEN id END)*100.0)/ COUNT(id) As Bad_loan_percentage 
FROM Bank_Loan_Data
----------------------------------------------------------------------------------------------------------

--Problem 2: Bad loan Application 
----------------------------------------------------------------------------------------------------------
SELECT COUNT(id) AS Bad_Loan_Applications FROM Bank_Loan_Data WHERE loan_status ='Charged off'
----------------------------------------------------------------------------------------------------------

--Problem 3: Bad loan Funded Amount 
----------------------------------------------------------------------------------------------------------
SELECT SUM(loan_amount) AS Bad_Loan_Funded_Amount FROM Bank_Loan_Data WHERE loan_status ='Charged off'
----------------------------------------------------------------------------------------------------------

--Problem 4: Bad loan Funded Amount 
----------------------------------------------------------------------------------------------------------
SELECT SUM(total_payment) AS Bad_Loan_Received_Amount FROM Bank_Loan_Data WHERE loan_status ='Charged off'
----------------------------------------------------------------------------------------------------------