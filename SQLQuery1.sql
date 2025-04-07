-- showing the whole table
SELECT *
FROM OCD.dbo.OCD;

---Count & Pct of F vs M that have OCD & -- Average Obsession Score by Gender

SELECT COUNT(*) AS Female
FROM OCD.dbo.OCD
WHERE Gender = 'Female';

SELECT Gender, COUNT(*) AS Count
FROM OCD.dbo.OCD
GROUP BY Gender;

SELECT Gender, ROUND(AVG([Y-BOCS Score (Obsessions)]), 2) AS AvgObsessionScore
FROM OCD.dbo.OCD
GROUP BY Gender;

---2. Count of Patients by Ethnicity and their respective Average Obsession Score

SELECT Ethnicity, COUNT(*) AS Count
FROM OCD.dbo.OCD
GROUP BY Ethnicity;

SELECT Ethnicity, ROUND(AVG([Y-BOCS Score (Obsessions)]), 2) AS AvgObsessionScore
FROM OCD.dbo.OCD
GROUP BY Ethnicity;

--- 3. Number of people diagnosed with OCD MoM

SELECT 
    FORMAT(CAST([OCD Diagnosis Date] AS DATE), 'yyyy-MM') AS MonthYear, 
    COUNT(*) AS NumberOfDiagnoses 
FROM 
    OCD.dbo.OCD
WHERE 
    TRY_CAST([OCD Diagnosis Date] AS DATE) IS NOT NULL 
GROUP BY 
    FORMAT(CAST([OCD Diagnosis Date] AS DATE), 'yyyy-MM') 
ORDER BY 
    MonthYear;

	 -- 4. What is the most common Obsession Type (Count) & it's respective Average Obsession Score

 SELECT [Obsession Type], COUNT(*) AS Count
FROM OCD.dbo.OCD
GROUP BY [Obsession Type];

SELECT [Obsession Type], ROUND(AVG([Y-BOCS Score (Obsessions)]), 2) AS AvgObsessionScore
FROM OCD.dbo.OCD
GROUP BY [Obsession Type];

SELECT
    [Obsession Type],
    COUNT([Patient ID]) AS patient_count,
    ROUND(AVG([Y-BOCS Score (Obsessions)]), 2) AS obs_score
FROM
    OCD.dbo.OCD
GROUP BY
    [Obsession Type] 
ORDER BY
    patient_count; 

 -- 5. What is the most common Compulsion type (Count) & it's respective Average Obsession Score
 SELECT
    [Compulsion Type],
    COUNT([Patient ID]) AS patient_count,
    ROUND(AVG([Y-BOCS Score (Compulsions)]), 2) AS comp_score
FROM
    OCD.dbo.OCD
GROUP BY
    [Compulsion Type] 
ORDER BY
    patient_count; 
