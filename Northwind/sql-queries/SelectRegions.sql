USE Northwind;
/*
GO 
CREATE PROC spAllRegions 
AS
SELECT RegionID, RegionDescription FROM Region 
ORDER BY RegionDescription;*/

exec spAllRegions;