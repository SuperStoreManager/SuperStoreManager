USE master;
GO

IF EXISTS (SELECT * FROM master.dbo.sysdatabases WHERE NAME = N'[SuperStoreManagerDB]')
BEGIN
  ALTER DATABASE [SuperStoreManagerDB] SET  SINGLE_USER WITH ROLLBACK IMMEDIATE

  DROP DATABASE [SuperStoreManagerDB]
END
GO

------------------------------------------------------------
-- CREATE Database [SuperStoreManagerDB]
------------------------------------------------------------

CREATE DATABASE [SuperStoreManagerDB] COLLATE Chinese_PRC_90_CI_AI WITH TRUSTWORTHY ON, DB_CHAINING ON;
GO


------------------------------------------------------------
-- CREATE SCHEMA for database [[SuperStoreManagerDB]]
------------------------------------------------------------

USE [SuperStoreManagerDB]
GO
