USE [InternetShopDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FName] [nvarchar](30) NOT NULL,
	[MName] [nvarchar](30) NULL,
	[LName] [nvarchar](30) NOT NULL,
	[Post] [nvarchar](50) NULL,
	[Salary] [money] NULL,
	[PriorSalary] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [ch_employees_priorsalary] CHECK  (([PriorSalary]<=[Salary]))
GO

ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [ch_employees_priorsalary]
GO


