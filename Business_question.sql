USE [Real_Estate_Sales_]
GO
-- Business Question 1: How many properties have been sold in each year in 'Bristol'?

SELECT
    DAddress.Town,
    DRecord.[ListYear],
    COUNT(*) AS TotalPropertiesSold
FROM
    Property.FACTRealEstate as FRealEState 
	INNER JOIN Property.DimRecord as DRecord ON FRealEState.RecordID = DRecord.RecordID
	INNER JOIN Property.DimAddress as DAddress ON FRealEState.AddressID = DAddress.AddressID
WHERE
	Town = 'Bristol'
GROUP BY
    Town, ListYear
ORDER BY
    ListYear;

-- Business Question 2: What is the average selling price of residential properties in a specific city which used payment method as 'Cash'?

SELECT
    Town,
    AVG([Sale Amount]) AS AverageSellingPrice
FROM
    Property.FACTRealEstate as FRealEState 
	INNER JOIN Property.DimAddress as DAddress ON FRealEState.AddressID = DAddress.AddressID
	INNER JOIN Property.DimProperty as DProperty ON FRealEState.PropertyID = DProperty.PropertyID
	INNER JOIN Property.DimBuyer as DBuyer ON DProperty.BuyerID = DBuyer.BuyerID
WHERE
    [Property Type] = 'Residential' AND [Payment Method] = 'Cash'
GROUP BY
    Town
ORDER BY
	AverageSellingPrice DESC;

