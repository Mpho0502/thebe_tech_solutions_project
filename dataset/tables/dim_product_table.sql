CREATE TABLE Dim_Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR (255),
    Category VARCHAR (255),
    Subcategory VARCHAR (255)
);

INSERT INTO Dim_Product VALUES
(1, 'Firewall Pro', 'Security', 'Network'),
(2, 'CloudX', 'Infrastructure', 'Cloud'),
(3, 'Insight360', 'Analytics', 'BI Tool'),
(4, 'SecureMail', 'Security', 'Email'),
(5, 'DataLakeX', 'Infrastructure', 'Storage'),
(6, 'PredictAI', 'Analytics', 'Machine Learning'),
(7, 'VPN Shield', 'Security', 'Remote Access'),
(8, 'ServerMax', 'Infrastructure', 'Compute'),
(9, 'QuerySwift', 'Analytics', 'Database Optimizer'),
(10, 'NodeGuard', 'Security', 'Endpoint'),
(11, 'DevFlow', 'Development', 'CI/CD'),
(12, 'StorageHub', 'Infrastructure', 'Object Storage'),
(13, 'AuthKey', 'Security', 'IAM'),
(14, 'MetricDash', 'Analytics', 'Reporting'),
(15, 'CodeCheck', 'Development', 'Static Analysis'),
(16, 'NetMap', 'Infrastructure', 'Topology'),
(17, 'EdgePoint', 'Infrastructure', 'Edge Computing'),
(18, 'VaultSafe', 'Security', 'Encryption'),
(19, 'StreamSync', 'Development', 'API Management'),
(20, 'GraphLogic', 'Analytics', 'Graph Database')
;