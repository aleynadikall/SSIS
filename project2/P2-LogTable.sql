USE [DWHDemo]
GO



CREATE TABLE [dbo].[LogErrorTable](
	[id] [int] IDENTITY(1,1) Primary Key,
	[Filepath] [varchar](250) NULL,
	[Errordetails] [varchar](250) NULL,
	[Errordatetime] [datetime] NULL,
)

ALTER TABLE [dbo].[LogErrorTable] ADD  CONSTRAINT [DF_LogErrorTable_Errordatetime]  DEFAULT (getdate()) FOR [Errordatetime]
GO

SELECT * FROM LogErrorTable

