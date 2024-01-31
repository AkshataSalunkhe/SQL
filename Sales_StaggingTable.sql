USE [Sales]
GO

CREATE TABLE Sales.Staging_RealEstate 
(
	Staging_RealEstate_id INT IDENTITY(1,1) PRIMARY KEY,
    [Serial Number] INT NULL,
    ListYear INT NULL,
    [Date Recorded] VARCHAR(255) NULL,
    [Town] VARCHAR(255) NULL,
    [Address] VARCHAR(255) NULL,
    [Assessed Value] INT NULL,
    [Sale Amount] FLOAT NULL,
    [Sales Ratio] FLOAT NULL,
    [Property Type] VARCHAR(255) NULL,
    [Residential Type] VARCHAR(255)  NULL,
    [Non Use Code] VARCHAR(255) NULL,
    [Assessor Remarks] VARCHAR(1000) NULL,
    [OPM Remarks] VARCHAR(1000) NULL,
    [Location] VARCHAR(1000) NULL,
	[AddressID] INT NULL, 
	[PropertyID] int NULL,
	[RecordID] INT NULL
);