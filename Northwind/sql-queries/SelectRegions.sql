USE Northwind;

DROP PROC IF EXISTS spSelectAllRegions;

GO 
CREATE PROC spSelectAllRegions 
AS
SELECT RegionDescription AS Region FROM Region 
ORDER BY RegionID;

exec spSelectAllRegions;