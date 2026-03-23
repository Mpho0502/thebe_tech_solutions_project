CREATE TABLE Dim_Accounts (
	AccountsID INT PRIMARY KEY,
	AccountsName VARCHAR (255),
	AccountsType VARCHAR (255),
	AccountsDescription VARCHAR (MAX)
);

INSERT INTO Dim_Accounts VALUES
(1, 'Enterprise Security', 'Premium', 'Full cybersecurity package'),
(2, 'Cloud Migration', 'Standard', 'Cloud infrastructure setup'),
(3, 'Analytics Suite', 'Basic', 'Data reporting and dashboards'),
(4, 'Compliance Tracker', 'Premium', 'Governance and compliance monitoring'),
(5, 'Network Shield', 'Standard', 'Firewall and intrusion detection'),
(6, 'Backup Vault', 'Basic', 'Data backup and recovery'),
(7, 'AI Insights', 'Premium', 'Machine learning analytics'),
(8, 'Mobile Secure', 'Standard', 'Mobile device protection'),
(9, 'Database Optimizer', 'Premium', 'Query performance tuning'),
(10, 'IoT Connect', 'Standard', 'Device management and monitoring'),
(11, 'DevOps Pipeline', 'Premium', 'CI/CD automation services'),
(12, 'Email Guard', 'Basic', 'Spam and phishing protection'),
(13, 'Identity Pro', 'Premium', 'Multi-factor authentication system'),
(14, 'Server Monitor', 'Standard', 'Uptime and resource tracking'),
(15, 'Code Auditor', 'Premium', 'Static and dynamic code analysis'),
(16, 'Asset Tracker', 'Basic', 'Hardware inventory management'),
(17, 'Edge Compute', 'Standard', 'Low-latency processing nodes'),
(18, 'Data Lakehouse', 'Premium', 'Unified storage and analytics'),
(19, 'VPN Plus', 'Standard', 'Secure remote access tunnels'),
(20, 'API Gateway', 'Premium', 'API management and security')
;