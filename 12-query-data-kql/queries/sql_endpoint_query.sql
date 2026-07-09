// Query data by using Transact-SQL
SELECT TOP 100 * from Bikestream

 SELECT TOP 10 Street, No_Bikes
 FROM Bikestream

//alias that renames No_Empty_Docks 
SELECT TOP 10 Street, No_Empty_Docks as [Number of Empty Docks]
from Bikestream

//Summarize data by using Transact-SQL
SELECT sum(No_Bikes) AS [Total Number of Bikes]
FROM Bikestream

 SELECT Neighbourhood, Sum(No_Bikes) AS [Total Number of Bikes]
 FROM Bikestream
 GROUP BY Neighbourhood


SELECT CASE
          WHEN Neighbourhood IS NULL OR Neighbourhood = '' THEN 'Unidentified'
          ELSE Neighbourhood
        END AS Neighbourhood,
        SUM(No_Bikes) AS [Total Number of Bikes]
FROM Bikestream
GROUP BY CASE
            WHEN Neighbourhood IS NULL OR Neighbourhood = '' THEN 'Unidentified'
            ELSE Neighbourhood
          END;

//Sort data by using Transact-SQL
 SELECT CASE
          WHEN Neighbourhood IS NULL OR Neighbourhood = '' THEN 'Unidentified'
          ELSE Neighbourhood
        END AS Neighbourhood,
        SUM(No_Bikes) AS [Total Number of Bikes]
 FROM Bikestream
 GROUP BY CASE
            WHEN Neighbourhood IS NULL OR Neighbourhood = '' THEN 'Unidentified'
            ELSE Neighbourhood
          END
 ORDER BY Neighbourhood ASC;

//Filter data by using Transact-SQL
 SELECT CASE
          WHEN Neighbourhood IS NULL OR Neighbourhood = '' THEN 'Unidentified'
          ELSE Neighbourhood
        END AS Neighbourhood,
        SUM(No_Bikes) AS [Total Number of Bikes]
 FROM Bikestream
 GROUP BY CASE
            WHEN Neighbourhood IS NULL OR Neighbourhood = '' THEN 'Unidentified'
            ELSE Neighbourhood
          END
 HAVING Neighbourhood = 'Chelsea'
 ORDER BY Neighbourhood ASC;
