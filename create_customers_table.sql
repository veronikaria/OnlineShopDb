USE [InternetShopDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FName] [nvarchar](30) NOT NULL,
	[MName] [nvarchar](30) NULL,
	[LName] [nvarchar](30) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[City] [nvarchar](30) NULL,
	[Phone] [char](13) NULL,
	[DateInSystem] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [ch_customers_dateinsystem] CHECK  (([DateInSystem]>=dateadd(day,(-90),getdate()) AND [DateInSystem]<=getdate()))
GO

ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [ch_customers_dateinsystem]
GO

ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [ch_customers_phone] CHECK  (([Phone] like '([0-9][0-9][0-9])[0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO

ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [ch_customers_phone]
GO


