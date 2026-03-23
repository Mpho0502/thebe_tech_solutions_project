CREATE TABLE Thebe_Tech_Solutions_Sales_Fact (
	SalesID INT PRIMARY KEY,
	EmployeeID INT,
	ClientsID INT,
	AccountsID INT,
	ProductID INT,
	DateID INT,
	Quantity INT,
	Price DECIMAL (10,2),
	Discounts DECIMAL (10,2),
	Expenses DECIMAL (10,2),
	TotalPrice DECIMAL (10,2),
	TotalProfits DECIMAL (10,2)
);