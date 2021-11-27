USE Northwind;
/*
DROP PROC IF EXISTS spSelectAllRegions;

GO 
CREATE PROC spSelectAllRegions 
AS
SELECT RegionID, RegionDescription FROM Region 
ORDER BY RegionID;
*/
exec spSelectAllRegions;