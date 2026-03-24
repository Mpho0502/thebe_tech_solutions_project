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

SELECT d.Year, d.Quarter,
	SUM(f.TotalProfits) as Total_profits
FROM Thebe_Tech_Solutions_Sales_Fact AS f
INNER JOIN Dim_Date AS d
ON f.DateID = d.DateID
GROUP BY d.Year, d.Quarter;

--12. Which product categories generated the most revenue?  

SELECT p.Category,
	SUM(f.TotalPrice) AS Revenue
FROM Thebe_Tech_Solutions_Sales_Fact AS f
INNER JOIN Dim_Product AS p
ON f.ProductID = p.ProductID
GROUP BY p.Category
ORDER by Revenue DESC;

--13. Which clients contributed the highest profits?

SELECT TOP 10 c.ClientName, 
	SUM(f.TotalProfits) AS Profits
FROM [Thebe_Tech_Solutions_Sales_Fact] AS f
INNER JOIN Dim_Clients AS c
ON f.ClientsID = c.ClientsID
GROUP BY c.ClientName
ORDER BY Profits DESC;

--14. How many transactions involved discounts greater than 100?  

SELECT
	COUNT(*) AS Discounts
FROM Thebe_Tech_Solutions_Sales_Fact
WHERE Discounts > 100;

--15. List all employees with their job titles and total sales revenue.

SELECT e.Name,
	   e.Surname,
	   e.JobTitle,
	SUM(f.TotalPrice) AS Revenue
FROM Thebe_Tech_Solutions_Sales_Fact AS f
INNER JOIN Dim_Emloyee AS e
ON f.EmployeeID = e.EmployeeID
GROUP BY e.Name, e.Surname, e.JobTitle
ORDER BY Revenue DESC;

--16. Which accounts generated the most sales transactions?  

SELECT TOP 10 a.AccountsName,
	COUNT(*) AS Sales_transactions
FROM Thebe_Tech_Solutions_Sales_Fact AS f
INNER JOIN Dim_Accounts AS a
ON f.AccountsID = a.AccountsID
GROUP BY a.AccountsName
ORDER BY Sales_transactions DESC;

--17. Show total expenses per year.

SELECT d.Year,
	SUM(f.Expenses) As Total_expenses
FROM Thebe_Tech_Solutions_Sales_Fact AS f
INNER JOIN Dim_Date AS d
ON f.DateID = d.DateID
GROUP BY d.Year;

--18. Which month had the highest sales revenue in 2022?

SELECT d.Month, 
	SUM(f.TotalPrice) AS Revenue
FROM Thebe_Tech_Solutions_Sales_Fact AS f
INNER JOIN Dim_Date AS d
ON f.DateID = d.DateID
WHERE d.Year = 2022
GROUP BY d.Month
ORDER BY Revenue DESC;

--19. List all products sold in 2024 with their total quantities.  

SELECT p.ProductName,
	 SUM(f.Quantity) AS Total_quantities
FROM Thebe_Tech_Solutions_Sales_Fact AS f
INNER JOIN Dim_Product AS p
ON f.ProductID = p.ProductID
INNER JOIN Dim_Date AS d
ON f.DateID = d.DateID
WHERE d.Year = 2024
GROUP BY p.ProductName
ORDER BY Total_quantities DESC;

--20. Which continent contributed the most revenue overall?  

SELECT c.Continent,
	SUM(f.TotalPrice) AS Revenue
FROM Thebe_Tech_Solutions_Sales_Fact AS f
INNER JOIN Dim_Clients AS c
ON f.ClientsID = c.ClientsID
GROUP BY c.Continent
ORDER BY Revenue DESC;