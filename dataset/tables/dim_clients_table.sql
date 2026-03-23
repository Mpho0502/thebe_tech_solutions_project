CREATE TABLE Dim_Clients (
	ClientsID INT PRIMARY KEY,
	ClientName VARCHAR (255),
	City VARCHAR (255),
	Province VARCHAR (255),
	Country VARCHAR (255),
	Continent VARCHAR (255)
);

INSERT INTO Dim_Clients VALUES
(1, 'Alpha Corp', 'Johannesburg', 'Gauteng', 'South Africa', 'Africa'),
(2, 'Beta Solutions', 'Cape Town', 'Western Cape', 'South Africa', 'Africa'),
(3, 'Gamma Tech', 'Nairobi', 'Nairobi County', 'Kenya', 'Africa'),
(4, 'Delta Systems', 'Lagos', 'Lagos State', 'Nigeria', 'Africa'),
(5, 'Epsilon Ltd', 'Durban', 'KwaZulu-Natal', 'South Africa', 'Africa'),
(6, 'Zeta Enterprises', 'Pretoria', 'Gauteng', 'South Africa', 'Africa'),
(7, 'Theta Group', 'Accra', 'Greater Accra', 'Ghana', 'Africa'),
(8, 'Iota Partners', 'Cairo', 'Cairo Governorate', 'Egypt', 'Africa'),
(9, 'Kappa Logistics', 'Casablanca', 'Casablanca-Settat', 'Morocco', 'Africa'),
(10, 'Lambda Media', 'Addis Ababa', 'Addis Ababa', 'Ethiopia', 'Africa'),
(11, 'London Legacy', 'London', 'Greater London', 'United Kingdom', 'Europe'),
(12, 'Madrid Merit', 'Madrid', 'Community of Madrid', 'Spain', 'Europe'),
(13, 'Rome Radiance', 'Rome', 'Lazio', 'Italy', 'Europe'),
(14, 'Amsterdam Ally', 'Amsterdam', 'North Holland', 'Netherlands', 'Europe'),
(15, 'Brussels Bridge', 'Brussels', 'Brussels-Capital', 'Belgium', 'Europe'),
(16, 'Vienna Valour', 'Vienna', 'Vienna', 'Austria', 'Europe'),
(17, 'Stockholm Star', 'Stockholm', 'Stockholm County', 'Sweden', 'Europe'),
(18, 'Zurich Zenith', 'Zurich', 'Canton of Zurich', 'Switzerland', 'Europe'),
(19, 'Oslo Ocean', 'Oslo', 'Oslo County', 'Norway', 'Europe'),
(20, 'Dublin Draft', 'Dublin', 'Leinster', 'Ireland', 'Europe')
;