SELECT*
FROM [Vitamin D analysis]..[vitamin d]
Order by 1, 2

Select PART I: BIODATA, F3, F4, F5, F6, F9
FROM Portfolio..CovidDeaths
order by 1, 2

 SELECT * 
 FROM dbo.vitamind

Select GENDER, VD1
FROM [Vitamin D analysis]..vitamind
GROUP BY gender
order by 1, 2

DELETE FROM [Vitamin D analysis]..vitamind 
WHERE GENDER IS NULL