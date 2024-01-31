USE [Sales]
GO

--Validate Data improted into Stagin Table and Check AddressID & PropertyID is NULL
Select * From [Sales].[Staging_RealEstate]

-- Validate there no data in DimAddress
SELECT * From Sales.DimAddress;

-- Get States data from Staging Table and Load into DimState
INSERT INTO Sales.DimAddress([Address],[Location],[Town])
SELECT
DISTINCT [Address],[Location],[Town]
FROM [Sales].[Staging_RealEstate]
ORDER BY [Town] ASC

-- Validate Data inserted into DimAddress
Select * From [Sales].DimAddress

-- Update AddressID in Staging
UPDATE Sales.Staging_RealEstate
SET Sales.Staging_RealEstate.AddressID = Sales.DimAddress.AddressID
FROM Sales.Staging_RealEstate
INNER JOIN Sales.DimAddress ON Sales.Staging_RealEstate.[Address] = Sales.DimAddress.[Address]

--Validate AddressID updated into Staging Table
Select * From [Sales].[Staging_RealEstate]


-- Property Details update

SELECT * From Sales.DimProperty;

-- Get States data from Staging Table and Load into DimState
INSERT INTO Sales.DimProperty([Property Type],[Residential Type],[Non Use Code],[OPM Remarks],[Assessor Remarks])
SELECT
DISTINCT [Property Type],[Residential Type],[Non Use Code],[OPM Remarks],[Assessor Remarks]
FROM [Sales].[Staging_RealEstate]
ORDER BY [Property Type] DESC

-- Validate Data inserted into DimProperty
Select * From [Sales].DimProperty

-- Update PropertyID in Staging
UPDATE Sales.Staging_RealEstate
SET Sales.Staging_RealEstate.PropertyID = Sales.DimProperty.PropertyID
FROM Sales.Staging_RealEstate
INNER JOIN Sales.DimProperty ON Sales.Staging_RealEstate.[Property Type] = Sales.DimProperty.[Property Type]

--Validate AddressID updated into Staging Table
Select * From [Sales].[Staging_RealEstate]

SELECT * From Sales.DimRecord;

-- Get States data from Staging Table and Load into DimState
INSERT INTO Sales.DimRecord([ListYear],[Date Recorded])
SELECT
DISTINCT [ListYear],[Date Recorded]
FROM [Sales].[Staging_RealEstate]
ORDER BY [ListYear] DESC

-- Validate Data inserted into DimProperty
Select * From [Sales].DimRecord;

-- Update RecordID in Staging
UPDATE Sales.Staging_RealEstate
SET Sales.Staging_RealEstate.RecordID = Sales.DimRecord.RecordID
FROM Sales.Staging_RealEstate
INNER JOIN Sales.DimRecord ON Sales.Staging_RealEstate.[Date Recorded] = Sales.DimRecord.[Date Recorded]

--Validate RecordID updated into Staging Table
Select * From [Sales].[Staging_RealEstate]

-- Load FACT Table with all of the appropriate data from the Staging table
INSERT INTO [Sales].[FACTRealEstate]
(   [Serial Number],
	[Assessed Value] ,
    [Sale Amount],
    [Sales Ratio],
	PropertyID,
	AddressID,
	RecordID)
SELECT
	[Serial Number],
	[Assessed Value] ,
    [Sale Amount],
    [Sales Ratio],
	PropertyID,
	AddressID,
	RecordID
FROM [Sales].[Sales].[Staging_RealEstate]

--Validate FACTRealEstate table data updated
Select * From Sales.FACTRealEstate
