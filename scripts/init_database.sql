/*

=======================================================
Create Database and Schemas
=======================================================

Script Purpose:
	This script creates a new database 'DataWarehouse'. If a database named 'DataWarehouse' already exists, it will be dropped.
	Then 3 Schemas 'bronze', 'silver' and 'gold' are created.

Warning:
	If a database 'DataWarehouse' already exists, all data within the database will be lost.
	Make sure to have proper backups before executing this script.

*/


USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse
GO

-- Switch to 'DataWarehouse' database
USE DataWarehouse
GO

-- Create DWH schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
