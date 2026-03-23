CREATE TABLE Dim_Emloyee (
	EmployeeID INT PRIMARY KEY,
	Name VARCHAR (255),
	Surname VARCHAR (255),
	Email VARCHAR (255),
	JobTitle VARCHAR (255)
);

INSERT INTO Dim_Emloyee VALUES
(1, 'John', 'Smith', 'john.smith@thebe.com', 'Sale Manager'),
(2, 'Mary', 'Johnson', 'mary.johnson@thebe.com','Account Executive'),
(3, 'David', 'Brown', 'david.brown@thebe.com', 'Tech Consultant'),
(4, 'Sarah', 'Williams', 'sarah.williams@thebe.com', 'Support Engineer'),
(5, 'Christopher','Smith','christopher.smith4@thebe.com','Operations Lead'),
(6, 'Barbara','Gonzalez','barbara.gonzalez6@thebe.com','Data Analyst'),
(7, 'Richard','Taylor','richard.taylor5@thebe.com','Product Owner'),
(8, 'James','Whayne','james.whayne@thebe.com','Tech Consultant'),
(9, 'Thomas','Martin','thomas.martin9@thebe.com','HR Specialist'),
(10, 'Elizabeth','Lopez','elizabeth.lopez10@thebe.com','Senior Engineer')
;