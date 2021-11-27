USE Northwind;

DROP PROC IF EXISTS spSelectRegion;

GO 
CREATE PROC spSelectRegion /* returns the Region with that name that has the smallest ID*/
(
	@RegionDescription VARCHAR(50)
)
AS
SELECT RegionID, RegionDescription FROM Region 
WHERE RegionDescription = @RegionDescription AND RegionID = (SELECT MIN(RegionID) FROM Region WHERE RegionDescription = @RegionDescription)
GO

/*
EXEC spSelectRegion @RegionDescription = 'test';
*/

