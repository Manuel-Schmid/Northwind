/*
USE Northwind;

DROP PROC IF EXISTS spInsertRegions;

GO 
CREATE PROC spInsertRegion
(
	@RegionDescription VARCHAR(50)
)
AS
INSERT INTO Region (RegionID, RegionDescription)
VALUES ((SELECT MAX(RegionID) FROM Region) + 1, @RegionDescription);
GO
*/
/**/
EXEC spInsertRegion @RegionDescription = 'test';
