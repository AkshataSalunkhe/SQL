USE [Sales]
GO

-- Create FACT table includig all measurable data
CREATE TABLE Sales.[FACTRealEstate]
(
	[FACTRealEstate_id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL ,

	[Serial Number] INT,
	[Assessed Value] INT NULL,
    [Sale Amount] FLOAT NULL,
    [Sales Ratio] FLOAT NULL,
	[PropertyID] INT NULL,
	[AddressID] INT NULL,
	[RecordID] INT NULL

)

-- Foreign Keys
-- Add PropertyID as foreign key in FACTRealEState Table
ALTER TABLE [Sales].[FACTRealEstate] WITH CHECK ADD CONSTRAINT [FK_PropertyID] FOREIGN
KEY([PropertyID])
REFERENCES [Sales].[DimProperty] ([PropertyID])
GO

ALTER TABLE [Sales].[FACTRealEstate] CHECK CONSTRAINT [FK_PropertyID]
GO

-- Add AddressID as foreign key in FACTRealEState Table
ALTER TABLE [Sales].[FACTRealEstate] WITH CHECK ADD CONSTRAINT [FK_AddressID] FOREIGN
KEY([AddressID])
REFERENCES [Sales].[DimAddress] ([AddressID])
GO

ALTER TABLE [Sales].[FACTRealEstate] CHECK CONSTRAINT [FK_AddressID]
GO

-- Add RecordID as foreign key in FACTRealEState Table
ALTER TABLE [Sales].[FACTRealEstate] WITH CHECK ADD CONSTRAINT [FK_RecordID] FOREIGN
KEY([RecordID])
REFERENCES [Sales].[DimRecord] ([RecordID])
GO

ALTER TABLE [Sales].[FACTRealEstate] CHECK CONSTRAINT [FK_RecordID]
GO
