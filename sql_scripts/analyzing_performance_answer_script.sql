--Analyzing Performance

--1. Which employees are listed in the system?

SELECT DISTINCT EmployeeID, 
				Name,
				Surname 
FROM dbo.Dim_Emloyee;

--2. How many employees do we have in total? 

SELECT COUNT(*) AS Total_employees
FROM Dim_Emloyee;

--3. Which clients are registered in our database? 

SELECT DISTINCT ClientName 
FROM Dim_Clients;

--4. How many clients are based in South Africa?

SELECT * FROM Dim_Clients
WHERE Country = 'South Africa';

--5. List all accounts and their types.

SELECT AccountsName,
	   AccountsType
FROM Dim_Accounts
ORDER BY AccountsType;

--6. How many products fall under the ‘Security’ category?  

SELECT *
FROM Dim_Product
WHERE Category = 'Security';

--7. Show all sales transactions recorded in the fact table.  

SELECT * 
FROM Thebe_Tech_Solutions_Sales_Fact;

--8. How many sales transactions occurred in 2023?

SELECT
	COUNT(*) AS Sales_in_2023
FROM Thebe_Tech_Solutions_Sales_Fact AS f 
INNER JOIN Dim_Date AS d 
ON f.DateID = d.DateID
WHERE d.Year = 2023;

--9. Which employees generated the highest number of sales transactions?  

SELECT EmployeeID,
	COUNT(*) AS Number_of_sales
FROM Thebe_Tech_Solutions_Sales_Fact
GROUP BY EmployeeID
ORDER BY Number_of_sales;

--10. What is the total revenue (TotalPrice) per year?

SELECT d.Year, 
	SUM(f.TotalProfits) as Profits
FROM Thebe_Tech_Solutions_Sales_Fact AS f
INNER JOIN Dim_Date AS d 
ON f.DateID = d.DateID
group by d.Year;

--11. What are the total profits per quarter across all years?  
--12. Which product categories generated the most revenue?  
--13. Which clients contributed the highest profits?
--14. How many transactions involved discounts greater than 100?  
--15. List all employees with their job titles and total sales revenue.
--16. Which accounts generated the most sales transactions?  
--17. Show total expenses per year.
--18. Which month had the highest sales revenue in 2022?
--19. List all products sold in 2024 with their total quantities.  
--20. Which continent contributed the most revenue overall?  
   