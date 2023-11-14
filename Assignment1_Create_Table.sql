--- Name : Akshata Salunkhe 
--- UID : 37374358
--- Assingment 1 - ADBMS

-- Real_Estate-Sales_ is database name 
USE [Real_Estate_Sales_]
GO

/****** Object:  Table [Property].[Buyers]   ******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
-- Property is Schema created

-- Creaing Table for Buyers with Primary Key Buyer_ID
CREATE TABLE [Property].[Buyers](
	[Buyer_ID] [int] NOT NULL,
	[First_name] [varchar](50) NOT NULL,
	[Last_name] [varchar](50) NOT NULL,
	[Mob_num] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Payment Method] [varchar](50) NULL,
    CONSTRAINT [PK_Buyers] PRIMARY KEY (Buyer_ID) -- Primary Key 
 );
GO

-- Creating Table for Real Estate Properties with Primary Key Serial Number
-- Buyer_ID is Foriegn key from reference of Buyers Table

CREATE TABLE [Property].[Real_Estate_Property](
	[Serial Number] [int] NOT NULL,
	[List Year] [int] NOT NULL,
	[Date Recorded] [varchar](50) NOT NULL,
	[Town] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Assessed Value] [int] NOT NULL,
	[Sale Amount] [int] NOT NULL,
	[Sales Ratio] [decimal](10, 10) NOT NULL,
	[Property Type] [varchar](50) NOT NULL,
	[Residential Type] [varchar](50) NULL,
	[No Use Code] [varchar](50) NULL,
	[Assessor Remarks] [varchar](50) NULL,
	[OPM remarks] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[Buyer_ID] [int] NOT NULL,
	CONSTRAINT PK_Real_Estate_Property PRIMARY KEY ([Serial Number]) -- Primary Key
	);

-- Adding Foreign key Buyer_ID in Real_Estate_Property table 

ALTER TABLE [Property].[Real_Estate_Property]  WITH CHECK ADD FOREIGN KEY([Buyer_ID])
REFERENCES [Property].[Buyers] ([Buyer_ID])
GO