-- Count the number of athletes from each country
SELECT Country, COUNT(*) AS TotalAthletes FROM athletes
GROUP BY Country ORDER BY TotalAthletes DESC

-- Calculate the total medals won by each country
SELECT Team_Country, SUM(Gold) AS Gold, SUM(Silver) AS Silver, SUM(Bronze) AS Bronze
FROM medals GROUP BY Team_Country ORDER BY Gold DESC

-- Calculte the average entries by gender for each discipline
SELECT Discipline, AVG(Female) Avg_Female, AVG(Male) Avg_Male FROM entriesgender
GROUP BY Discipline