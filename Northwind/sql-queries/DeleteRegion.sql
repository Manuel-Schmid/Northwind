USE Northwind;
/* 
DROP PROC IF EXISTS spDeleteRegion;

GO 
CREATE PROC spDeleteRegion
(
	@RegionDescription VARCHAR(50)
)
AS

DECLARE @DelRegionID AS INT;

SELECT @DelRegionID = MIN(RegionID) FROM Region WHERE RegionDescription = @RegionDescription;

DELETE EmployeeTerritories
FROM EmployeeTerritories
INNER JOIN Territories
  ON EmployeeTerritories.TerritoryID=Territories.TerritoryID
WHERE RegionID = @DelRegionID;

DELETE FROM Territories WHERE RegionID = @DelRegionID;

DELETE FROM Region WHERE RegionID = @DelRegionID;
GO
*/


EXEC spDeleteRegion @RegionDescription = 'Eastern';
