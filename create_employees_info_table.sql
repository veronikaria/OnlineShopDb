USE [InternetShopDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EmployeesInfo](
	[ID] [int] NOT NULL,
	[MarialStatus] [nvarchar](30) NOT NULL,
	[Birthdate] [date] NULL,
	[Address] [nvarchar](100) NULL,
	[Phone] [char](13) NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[EmployeesInfo]  WITH CHECK ADD FOREIGN KEY([ID])
REFERENCES [dbo].[Employees] ([ID])
GO

ALTER TABLE [dbo].[EmployeesInfo]  WITH CHECK ADD  CONSTRAINT [ch_employeesinfo_birthdate] CHECK  (([BirthDate]>=dateadd(year,(-50),getdate()) AND [BirthDate]<=dateadd(year,(-18),getdate())))
GO

ALTER TABLE [dbo].[EmployeesInfo] CHECK CONSTRAINT [ch_employeesinfo_birthdate]
GO

ALTER TABLE [dbo].[EmployeesInfo]  WITH CHECK ADD  CONSTRAINT [ch_employeesinfo_marialstatus] CHECK  (([MarialStatus]=N'Не заміжня' OR [MarialStatus]=N'Заміжня' OR [MarialStatus]=N'Неодружений' OR [MarialStatus]=N'Одружений'))
GO

ALTER TABLE [dbo].[EmployeesInfo] CHECK CONSTRAINT [ch_employeesinfo_marialstatus]
GO

ALTER TABLE [dbo].[EmployeesInfo]  WITH CHECK ADD  CONSTRAINT [ch_employeesinfo_phone] CHECK  (([Phone] like '([0-9][0-9][0-9])[0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO

ALTER TABLE [dbo].[EmployeesInfo] CHECK CONSTRAINT [ch_employeesinfo_phone]
GO


