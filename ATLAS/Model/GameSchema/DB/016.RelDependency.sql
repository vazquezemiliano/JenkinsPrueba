/*
   lunes, 12 de mayo de 20142:28:23
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
ALTER TABLE dbo.ElementType SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.ElementType', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.ElementType', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.ElementType', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.RelDependency ADD CONSTRAINT
	FK_RelDependency_ElementType FOREIGN KEY
	(
	Id1
	) REFERENCES dbo.ElementType
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.RelDependency ADD CONSTRAINT
	FK_RelDependency_ElementType1 FOREIGN KEY
	(
	Id2
	) REFERENCES dbo.ElementType
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.RelDependency SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.RelDependency', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.RelDependency', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.RelDependency', 'Object', 'CONTROL') as Contr_Per 