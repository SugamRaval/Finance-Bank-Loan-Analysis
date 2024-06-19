-- Dashboard 3 : Details :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
-- Grid Views :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
SELECT * FROM Bank_Loan_Data

-- Means use various filter like by grade and address_state etc.....
SELECT home_ownership, --x
	   COUNT(id) AS Total_Loan_Applications,
	   SUM(loan_amount) AS Total_Funded_Amount,
	   SUM(total_payment) AS Total_Received_Amount
	   FROM Bank_Loan_Data
	   WHERE grade= 'A' AND address_state= 'CA'
	   GROUP BY  home_ownership -- need to group by through Schema here x is schema
	   ORDER BY  COUNT(id) DESC  -- or SUM(loan_amount) DESC / SUM(total_payment) DESC