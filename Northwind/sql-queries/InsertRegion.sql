USE Northwind;

/*
GO 
CREATE PROC spInsertRegion 
	@RegionDescription NCHAR(50)
AS
INSERT INTO Region (RegionID, RegionDescription)
VALUES ((SELECT MAX(RegionID) FROM Region) + 1, @RegionDescription);
*/

EXEC spInsertRegion @RegionDescription = 'North-South-west';
