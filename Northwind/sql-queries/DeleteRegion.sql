USE Northwind;
/*
DROP PROC IF EXISTS spDeleteRegion;

GO 
CREATE PROC spDeleteRegion
(
	@RegionDescription VARCHAR(50)
)
AS
DELETE FROM Region WHERE RegionDescription = @RegionDescription;
GO
*/

EXEC spDeleteRegion @RegionDescription = 'test';
