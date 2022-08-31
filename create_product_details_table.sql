USE [InternetShopDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductDetails](
	[ID] [int] NOT NULL,
	[Color] [nvarchar](100) NULL,
	[Description] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD FOREIGN KEY([ID])
REFERENCES [dbo].[Products] ([ID])
GO


