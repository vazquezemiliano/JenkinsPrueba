/*
   lunes, 12 de mayo de 20144:04:04
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
CREATE TABLE dbo.Resource
	(
	Id bigint NOT NULL,
	IdType bigint NOT NULL,
	Frecuency numeric(18, 2) NOT NULL,
	Amount numeric(18, 2) NOT NULL,
	LastUpdate datetime NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Resource ADD CONSTRAINT
	DF_Resource_Frecuency DEFAULT 0 FOR Frecuency
GO
ALTER TABLE dbo.Resource ADD CONSTRAINT
	PK_Resource PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Resource SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Resource', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Resource', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Resource', 'Object', 'CONTROL') as Contr_Per 