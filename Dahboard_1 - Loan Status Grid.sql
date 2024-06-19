-- Dashboard 1 : Summary :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

SELECT * FROM Bank_Loan_Data

-- Loan Status Grid :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

-- problem : 1----------------------------------------------------------------------------------------------
SELECT loan_status, COUNT(id) AS Total_Loan_Applications,
					SUM(total_payment) As Total_Amount_Received,
					SUM(loan_amount) As Total_Funded_Amount,
					AVG(int_rate * 100) AS Interest_Rate,
					AVG(dti * 100) AS DTI
					FROM Bank_Loan_Data
					GROUP BY loan_status

-- problem : 2 (Month To Date )----------------------------------------------------------------------------------------------
SELECT loan_status, SUM(total_payment) As MTD_Total_Amount_Received,
					SUM(loan_amount) As MTD_Total_Funded_Amount
					FROM Bank_Loan_Data
					WHERE MONTH(issue_date) =12 AND YEAR(issue_date)=2021
					GROUP BY loan_status 
					