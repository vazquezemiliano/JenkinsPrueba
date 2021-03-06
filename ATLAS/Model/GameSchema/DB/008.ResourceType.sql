/*
   lunes, 12 de mayo de 20140:12:24
   User: 
   Server: NICO-PC
   Database: PRUEBA
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.ResourceType
	(
	Id bigint NOT NULL,
	Name varchar(100) NOT NULL,
	Duration numeric(10, 0) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.ResourceType ADD CONSTRAINT
	DF_ResourceType_Name DEFAULT '' FOR Name
GO
ALTER TABLE dbo.ResourceType ADD CONSTRAINT
	DF_ResourceType_Duration DEFAULT 0 FOR Duration
GO
ALTER TABLE dbo.ResourceType ADD CONSTRAINT
	PK_ResourceType PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.ResourceType SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.ResourceType', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.ResourceType', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.ResourceType', 'Object', 'CONTROL') as Contr_Per 