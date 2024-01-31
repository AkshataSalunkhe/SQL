USE [Sales]
GO

-- Create DimAddress table in the Sales schema
CREATE TABLE Sales.DimAddress (
    AddressID INT IDENTITY(1,1) PRIMARY KEY,
    [Town] VARCHAR(255) NULL,
    [Address] VARCHAR(255) NULL,
	[Location] VARCHAR(1000) NULL
);

-- Create DimRecord table in the Sales schema
CREATE TABLE Sales.DimRecord(
	RecordID INT IDENTITY(1,1) PRIMARY KEY,
	[ListYear] INT NULL,
    [Date Recorded] VARCHAR(255) NULL
);

-- Create DimPropertyType table in the Sales schema
CREATE TABLE Sales.DimProperty (
    PropertyID INT IDENTITY(1,1) PRIMARY KEY,
    [Property Type] VARCHAR(255) NULL,
    [Residential Type] VARCHAR(255)  NULL,
	[Non Use Code] VARCHAR(255) NULL,
    [Assessor Remarks] VARCHAR(1000) NULL,
    [OPM Remarks] VARCHAR(1000) NULL,
);


USE [Sales]
GO

CREATE TABLE [Sales].[DimListYear] (
    ListYearID INT PRIMARY KEY IDENTITY(1,1),
    [List Year] INT
);

DROP TABLE [Sales].[DimListYear];


CREATE TABLE [Real_Estate_Datamart].[DimTown] (
    TownID INT PRIMARY KEY IDENTITY(1,1),
    TownName VARCHAR(255)
);

DROP TABLE [Real_Estate_Datamart].[DimTown];


CREATE TABLE [Real_Estate_Datamart].[DimAddress] (
    AddressID INT PRIMARY KEY IDENTITY(1,1),
    Address VARCHAR(255)
);

DROP TABLE [Real_Estate_Datamart].[DimAddress];


CREATE TABLE [Real_Estate_Datamart].[DimPropertyType] (
    PropertyTypeID INT PRIMARY KEY IDENTITY(1,1),
    PropertyType VARCHAR(255)
);

DROP TABLE [Real_Estate_Datamart].[DimPropertyType];


CREATE TABLE [Real_Estate_Datamart].[DimResidentialType] (
    ResidentialTypeID INT PRIMARY KEY IDENTITY(1,1),
    ResidentialType VARCHAR(255)
);

DROP TABLE [Real_Estate_Datamart].[DimResidentialType];


CREATE TABLE [Real_Estate_Datamart].[DimNonUseCode] (
    NonUseCodeID INT PRIMARY KEY IDENTITY(1,1),
    NonUseCode VARCHAR(255)
);

DROP TABLE [Real_Estate_Datamart].[DimNonUseCode];


CREATE TABLE [Real_Estate_Datamart].[DimAssessorRemarks] (
    AssessorRemarksID INT PRIMARY KEY IDENTITY(1,1),
    AssessorRemarks VARCHAR(1000)
);

DROP TABLE [Real_Estate_Datamart].[DimAssessorRemarks];


CREATE TABLE [Real_Estate_Datamart].[DimOPMRemarks] (
    OPMRemarksID INT PRIMARY KEY IDENTITY(1,1),
    OPMRemarks VARCHAR(1000)
);

DROP TABLE [Real_Estate_Datamart].[DimOPMRemarks];


CREATE TABLE [Real_Estate_Datamart].[DimLocation] (
    LocationID INT PRIMARY KEY IDENTITY(1,1),
    Location VARCHAR(1000)
);

DROP TABLE [Real_Estate_Datamart].[DimLocation];

SELECT * FROM [Real_Estate_Datamart].[Real_Estate_Source_Staging_Table];