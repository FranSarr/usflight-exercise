// Exercise 1
SELECT COUNT(*) FROM `Flights` WHERE 1 
// Exercise 2
SELECT Origin, AVG(ArrDelay) as AverageDelay, AVG(DepDelay) as DepartureDelay
FROM `Flights`
GROUP BY Origin;
// Exercise 3
SELECT Origin, colYear, colMonth, AVG(ArrDelay) as AverageArrDelay
FROM `Flights`
GROUP BY Origin, colYear, colMonth;
// Exercise 4
SELECT City, colYear, colMonth, AVG(ArrDelay) as AverageArrDelay
FROM `Flights`
  JOIN `USAirports`
    ON Flights.Origin = USAirports.IATA
GROUP BY City, colYear, colMonth;
// Exercise 5
SELECT UniqueCarrier, colYear, colMonth, SUM(Cancelled) as total_cancelled
FROM `Flights`
GROUP BY UniqueCarrier
ORDER BY SUM(Cancelled) DESC;
// Exercise 6
SELECT TailNum, SUM(Distance) as totalDistance
FROM `Flights`
GROUP BY TailNum
ORDER BY SUM(Distance) DESC;
// Exercise 7
SELECT UniqueCarrier, AVG(ArrDelay) as AvgDelay
FROM `Flights`
GROUP BY UniqueCarrier
HAVING AVG(ArrDelay) > 10
ORDER BY AVG(ArrDelay) DESC;
