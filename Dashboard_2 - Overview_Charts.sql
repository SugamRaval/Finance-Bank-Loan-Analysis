-- Dashboard 2 : Overview :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
-- Charts :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
SELECT * FROM Bank_Loan_Data

-- Problem 1: Matrix
------------------------------------------------------------------------------------------------------------
SELECT MONTH(issue_date) AS Month_Number, --x
       DATENAME(MONTH,issue_date) AS Month_Name,--x
	   COUNT(id) AS Total_Loan_Applications,
	   SUM(loan_amount) AS Total_Funded_Amount,
	   SUM(total_payment) AS Total_Received_Amount
	   FROM Bank_Loan_Data
	   GROUP BY MONTH(issue_date), DATENAME(MONTH,issue_date) -- need to group by through Schema here x is schema
	   ORDER BY MONTH(issue_date) 

-- Problem 2: Regional Analysis by state
------------------------------------------------------------------------------------------------------------
SELECT address_state, --x
	   COUNT(id) AS Total_Loan_Applications,
	   SUM(loan_amount) AS Total_Funded_Amount,
	   SUM(total_payment) AS Total_Received_Amount
	   FROM Bank_Loan_Data
	   GROUP BY  address_state -- need to group by through Schema here x is schema
	   ORDER BY  COUNT(id) DESC -- or SUM(loan_amount) DESC / SUM(total_payment) DESC

-- Problem 3: Loan Term Analysis
------------------------------------------------------------------------------------------------------------
SELECT term, --x
	   COUNT(id) AS Total_Loan_Applications,
	   SUM(loan_amount) AS Total_Funded_Amount,
	   SUM(total_payment) AS Total_Received_Amount
	   FROM Bank_Loan_Data
	   GROUP BY  term -- need to group by through Schema here x is schema
	   ORDER BY  term  -- or SUM(loan_amount) DESC / SUM(total_payment) DESC

-- Problem 4: Loan Purpose Breakdown
------------------------------------------------------------------------------------------------------------
SELECT purpose, --x
	   COUNT(id) AS Total_Loan_Applications,
	   SUM(loan_amount) AS Total_Funded_Amount,
	   SUM(total_payment) AS Total_Received_Amount
	   FROM Bank_Loan_Data
	   GROUP BY  purpose -- need to group by through Schema here x is schema
	   ORDER BY  COUNT(id) DESC  -- or SUM(loan_amount) DESC / SUM(total_payment) DESC

-- Problem 5: Home Ownership Analysis
------------------------------------------------------------------------------------------------------------
SELECT home_ownership, --x
	   COUNT(id) AS Total_Loan_Applications,
	   SUM(loan_amount) AS Total_Funded_Amount,
	   SUM(total_payment) AS Total_Received_Amount
	   FROM Bank_Loan_Data
	   GROUP BY  home_ownership -- need to group by through Schema here x is schema
	   ORDER BY  COUNT(id) DESC  -- or SUM(loan_amount) DESC / SUM(total_payment) DESC
	   	   