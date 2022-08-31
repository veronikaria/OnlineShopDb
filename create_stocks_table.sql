USE [InternetShopDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Stocks](
	[ProductID] [int] NOT NULL,
	[Qty] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Stocks]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO

ALTER TABLE [dbo].[Stocks]  WITH CHECK ADD  CONSTRAINT [ch_stocks_qty] CHECK  (([Qty]>(0)))
GO

ALTER TABLE [dbo].[Stocks] CHECK CONSTRAINT [ch_stocks_qty]
GO


