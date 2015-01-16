USE [SuperStoreManagerDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

------------------------------------------------------------
-- CREATE TABLE dbo].[StoreType]
------------------------------------------------------------
CREATE TABLE [dbo].[StoreType](
	[StoreTypeId] [int] NOT NULL,
	[StoreType] [nvarchar](50) NOT NULL,
	[Desciption] [nvarchar](50) NULL,
	[ParentTypeId] [int] NULL,
 CONSTRAINT [PK_StoreType] PRIMARY KEY CLUSTERED 
(
	[StoreTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


