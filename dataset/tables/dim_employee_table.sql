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
(10, 'Elizabeth','Lopez','elizabeth.lopez10@thebe.com','Senior Engineer'),
(11, 'Nancy', 'Smith', 'nancy.smith11@thebe.com', 'Data Analyst'),
(12, 'Thomas', 'Smith', 'thomas.smith12@thebe.com', 'Sales Manager'),
(13, 'James', 'Lopez', 'james.lopez13@thebe.com', 'Tech Consultant'),
(14, 'Sarah', 'Davis', 'sarah.davis14@thebe.com', 'Data Analyst'),
(15, 'James', 'Williams', 'james.williams15@thebe.com', 'HR Specialist'),
(16, 'William', 'Hernandez', 'william.hernandez16@thebe.com', 'Account Executive'),
(17, 'Susan', 'Moore', 'susan.moore17@thebe.com', 'Data Analyst'),
(18, 'Karen', 'Johnson', 'karen.johnson18@thebe.com', 'Marketing Coordinator'),
(19, 'Sarah', 'Taylor', 'sarah.taylor19@thebe.com', 'Tech Consultant'),
(20, 'Michael', 'Martinez', 'michael.martinez20@thebe.com', 'Account Executive')
;