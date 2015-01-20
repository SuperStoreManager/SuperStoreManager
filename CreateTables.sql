USE [SuperStoreManagerDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

------------------------------------------------------------
-- CREATE TABLE [dbo].[CommonDataType]
------------------------------------------------------------
CREATE TABLE [dbo].[CommonDataType](
	[TypeId] [int] NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
	[ParentId] [int] NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_CommonDataType] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

------------------------------------------------------------
-- CREATE TABLE [dbo].[StoreInfo]
------------------------------------------------------------
CREATE TABLE [dbo].[StoreInfo](
	[StoreId] [bigint] IDENTITY(1,1) NOT NULL,
	[StoreName] [nvarchar](50) NOT NULL,
	[StoreTypeId] [int] NOT NULL,
	[Description] [nvarchar](50) NULL,
	[IdPaidStore] [bit] NOT NULL,
 CONSTRAINT [PK_StoreInfo] PRIMARY KEY CLUSTERED 
(
	[StoreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

------------------------------------------------------------
-- CREATE TABLE [dbo].[AdminDetailInfo]
------------------------------------------------------------
CREATE TABLE [dbo].[AdminDetailInfo](
	[AdminId] [int] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[StoreId] [bigint] NOT NULL,
	[AddDate] [date] NOT NULL,
	[ExpiredDate] [date] NOT NULL,
	[OperationBy] [uniqueidentifier] NOT NULL,
	[AdminType] [int] NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

------------------------------------------------------------
-- CREATE TABLE [dbo].[EmployeeInfo]
------------------------------------------------------------
CREATE TABLE [dbo].[EmployeeInfo](
	[EmployeeId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[StoreId] [bigint] NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
	[Eamil] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[EmployeeType] [int] NOT NULL,
	[IsAdmin] [bit] NOT NULL,
	[AdminId] [int] NOT NULL,
 CONSTRAINT [PK_EmployeeInfo] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

------------------------------------------------------------
-- CREATE TABLE [dbo].[RelationshipInfo]
------------------------------------------------------------
CREATE TABLE [dbo].[RelationshipInfo](
	[Id] [int] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[StoreId] [bigint] NOT NULL,
	[FeatureId] [bigint] NOT NULL,
	[StartDate] [date] NOT NULL,
	[ExpiredDate] [date] NOT NULL,
	[IsVaild] [bit] NOT NULL,
 CONSTRAINT [PK_RelationshipInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

------------------------------------------------------------
-- CREATE TABLE [dbo].[Appointment]
------------------------------------------------------------
CREATE TABLE [dbo].[Appointment](
	[Id] [bigint] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[StoreId] [bigint] NOT NULL,
	[EmployeeId] [uniqueidentifier] NOT NULL,
	[FeatureId] [bigint] NOT NULL,
	[AppointmentDate] [date] NOT NULL,
	[NoticeInAdvan] [bit] NOT NULL,
	[Cancel] [bit] NOT NULL,
	[Completed] [bit] NOT NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

------------------------------------------------------------
-- CREATE TABLE [dbo].[CashieringRecordInfo]
------------------------------------------------------------
CREATE TABLE [dbo].[CashieringRecordInfo](
	[Id] [uniqueidentifier] NOT NULL,
	[StoreId] [bigint] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[EmployeeId] [uniqueidentifier] NOT NULL,
	[FeatureId] [bigint] NOT NULL,
	[OriginalPrice] [decimal](18, 0) NOT NULL,
	[Discount] [float] NOT NULL,
	[RealPrice] [decimal](18, 0) NOT NULL,
	[IsDiscount] [bit] NOT NULL,
	[Datetime] [date] NOT NULL,
	[Rated] [float] NOT NULL,
 CONSTRAINT [PK_CashieringInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

------------------------------------------------------------
-- CREATE TABLE [dbo].[RechargeRecordInfo]
------------------------------------------------------------
CREATE TABLE [dbo].[RechargeRecordInfo](
	[Id] [bigint] NULL,
	[UserId] [uniqueidentifier] NULL,
	[StoreId] [bigint] NULL,
	[Amount] [decimal](18, 0) NULL,
	[Datetime] [date] NULL,
	[Discount] [float] NULL,
	[IsDiscount] [bit] NULL
) ON [PRIMARY]

GO

------------------------------------------------------------
-- CREATE TABLE [dbo].[AmountInfo]
------------------------------------------------------------
CREATE TABLE [dbo].[AmountInfo](
	[Id] [bigint] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[StoreId] [bigint] NOT NULL,
	[Balance] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_AmountInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

------------------------------------------------------------
-- CREATE TABLE [dbo].[RatingRecordInfo]
------------------------------------------------------------
CREATE TABLE [dbo].[RatingRecordInfo](
	[Id] [bigint] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[StoreId] [bigint] NOT NULL,
	[EmployeeId] [uniqueidentifier] NOT NULL,
	[FeatureId] [bigint] NOT NULL,
	[Rate] [float] NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_RatingRecordInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

------------------------------------------------------------
-- CREATE TABLE [dbo].[FeatureInfo]
------------------------------------------------------------
CREATE TABLE [dbo].[FeatureInfo](
	[Id] [bigint] NOT NULL,
	[FeatureName] [nvarchar](50) NOT NULL,
	[StoreId] [bigint] NOT NULL,
	[Price] [float] NOT NULL,
	[Decription] [nvarchar](50) NULL,
 CONSTRAINT [PK_FeatureInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

------------------------------------------------------------
-- CREATE TABLE [dbo].[EmployeeAndFeatureMapping]
------------------------------------------------------------
CREATE TABLE [dbo].[EmployeeAndFeatureMapping](
	[Id] [bigint] NOT NULL,
	[EmployeeId] [uniqueidentifier] NOT NULL,
	[FeatureId] [bigint] NOT NULL,
 CONSTRAINT [PK_EmployeeAndFeatureMapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

------------------------------------------------------------
-- CREATE TABLE [dbo].[DiscountRecordInfo]
------------------------------------------------------------
CREATE TABLE [dbo].[DiscountRecordInfo](
	[Id] [bigint] NOT NULL,
	[StoreId] [bigint] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[DiscountType] [int] NOT NULL,
	[DiscountText] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_DiscountRecordInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

------------------------------------------------------------
-- CREATE TABLE [dbo].[DiscountAndFeatureMapping]
------------------------------------------------------------
CREATE TABLE [dbo].[DiscountAndFeatureMapping](
	[Id] [bigint] NOT NULL,
	[DiscountId] [bigint] NOT NULL,
	[FeatureId] [bigint] NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_DiscountAndFeatureMapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

------------------------------------------------------------
-- CREATE TABLE [dbo].[DiscountAndFeatureMapping]
------------------------------------------------------------
CREATE TABLE [dbo].[IncomeInfo](
	[StoreId] [bigint] NOT NULL,
	[TotalIncome] [decimal](18, 0) NOT NULL,
	[IncomeCount] [int] NOT NULL,
 CONSTRAINT [PK_IncomeInfo] PRIMARY KEY CLUSTERED 
(
	[StoreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
