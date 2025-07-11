/* deletes previous database and create new database everytime */
use master;
GO
IF EXISTS (select 1 from sys.databases where name ='DataWarehouse') 
Begin 
	Alter database DataWarehouse set single_user with Rollback Immediate;
	Drop Database DataWarehouse;
End

GO

create database DataWarehouse;
go
use DataWarehouse;
go
create schema Bronze;
go
create schema Silver;
go
create schema Gold;
