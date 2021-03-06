/*
   lunes, 12 de mayo de 20140:52:22
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
CREATE TABLE dbo.RelDependency
	(
	Id1 bigint NOT NULL,
	Id2 bigint NOT NULL,
	ElementType1 varchar(1) NOT NULL,
	ElementType2 varchar(1) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.RelDependency ADD CONSTRAINT
	DF_RelDependency_ElementType1 DEFAULT 'N' FOR ElementType1
GO
ALTER TABLE dbo.RelDependency ADD CONSTRAINT
	DF_RelDependency_ElementType2 DEFAULT 'N' FOR ElementType2
GO
ALTER TABLE dbo.RelDependency ADD CONSTRAINT
	PK_RelDependency PRIMARY KEY CLUSTERED 
	(
	Id1,
	Id2
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.RelDependency SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.RelDependency', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.RelDependency', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.RelDependency', 'Object', 'CONTROL') as Contr_Per 