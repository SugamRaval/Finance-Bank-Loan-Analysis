-- Dashboard 1 : Summary :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

SELECT * FROM Bank_Loan_Data

-- 1st problem of Summary : Total Loan Applications..........
---------------------------------------------------------------------------------------------------------------------
SELECT COUNT(id) AS Total_Loan_Applications FROM Bank_Loan_Data

--Month to date
SELECT COUNT(id) AS MTD_Total_Loan_Applications FROM Bank_Loan_Data WHERE MONTH(issue_date) =12 AND YEAR(issue_date)=2021
-- Previous Month to date
SELECT COUNT(id) AS PMTD_Total_Loan_Applications FROM Bank_Loan_Data WHERE MONTH(issue_date) =11 AND YEAR(issue_date)=2021
-- MOM : (MTD - PMTD)/(PMTD)
----------------------------------------------------------------------------------------------------------------------

-- 2nd problem of Summary : Total Funded Amount..........
---------------------------------------------------------------------------------------------------------------------
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM Bank_Loan_Data

--Month to date
SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount FROM Bank_Loan_Data WHERE MONTH(issue_date) =12 AND YEAR(issue_date)=2021
-- Previous Month to date
SELECT SUM(loan_amount) AS PMTD_Total_Funded_Amount FROM Bank_Loan_Data WHERE MONTH(issue_date) =11 AND YEAR(issue_date)=2021
----------------------------------------------------------------------------------------------------------------------

-- 3rd problem of Summary : Total Received Amount..........
---------------------------------------------------------------------------------------------------------------------
SELECT SUM(total_payment) AS Total_Received_Amount FROM Bank_Loan_Data

--Month to date
SELECT SUM(total_payment) AS MTD_Total_Received_Amount FROM Bank_Loan_Data WHERE MONTH(issue_date) =12 AND YEAR(issue_date)=2021
-- Previous Month to date
SELECT SUM(total_payment) AS PMTD_Total_Received_Amount FROM Bank_Loan_Data WHERE MONTH(issue_date) =11 AND YEAR(issue_date)=2021
----------------------------------------------------------------------------------------------------------------------

-- 4th problem of Summary : Average Interest Rate..........
---------------------------------------------------------------------------------------------------------------------
SELECT ROUND(AVG(int_rate)*100,2) AS Avg_Interest_Rate FROM Bank_Loan_Data

--Month to date
SELECT ROUND(AVG(int_rate)*100,2) AS MTD_Avg_Interest_Rate FROM Bank_Loan_Data WHERE MONTH(issue_date) =12 AND YEAR(issue_date)=2021
-- Previous Month to date
SELECT ROUND(AVG(int_rate)*100,2) AS PMTD_Avg_Interest_Rate FROM Bank_Loan_Data WHERE MONTH(issue_date) =11 AND YEAR(issue_date)=2021
----------------------------------------------------------------------------------------------------------------------

-- 5th problem of Summary : Average Debt-to-income Ration (DTI)..........
---------------------------------------------------------------------------------------------------------------------
SELECT ROUND(AVG(dti)*100,2) AS Avg_Interest_Rate FROM Bank_Loan_Data

--Month to date
SELECT ROUND(AVG(dti)*100,2) AS MTD_Avg_Interest_Rate FROM Bank_Loan_Data WHERE MONTH(issue_date) =12 AND YEAR(issue_date)=2021
-- Previous Month to date
SELECT ROUND(AVG(dti)*100,2) AS PMTD_Avg_Interest_Rate FROM Bank_Loan_Data WHERE MONTH(issue_date) =11 AND YEAR(issue_date)=2021
----------------------------------------------------------------------------------------------------------------------