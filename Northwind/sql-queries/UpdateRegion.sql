USE Northwind;

DROP PROC IF EXISTS spUpdateRegion;

GO 
CREATE PROC spUpdateRegion
(
	@RegionID INT,
	@NewRegionDescription VARCHAR(50)
)
AS
UPDATE Region
SET    RegionDescription = @NewRegionDescription
WHERE  RegionID = @RegionID
GO

/*
EXEC spUpdateRegion @RegionID = 'Northern', @NewRegionDescription = 'Baba Yaga';
*/