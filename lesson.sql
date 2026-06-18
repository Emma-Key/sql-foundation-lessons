/*
My first SQL lesson
test text
test
*/
-- This is my select statment

SELECT
	ps.PatientId
	,ps.Hospital
	,DATEADD(WEEK, -2, PS.AdmittedDate) AS ReminderDate
	,ps.Ward
	,ps.AdmittedDate
	,ps.DischargeDate
	,DATEDIFF(DAY, ps.AdmittedDate, ps.DischargeDate) AS LengthOfStay
	,ps.Tariff
FROM
	PatientStay as ps
WHERE ps.Hospital IN ('Kingston','PRUH')
-- AND ps.Ward LIKE '%surgery'
-- AND ps.AdmittedDate BETWEEN '2024-02-27' AND '2024-02-29'
ORDER BY ps.Tariff DESC, PS.PatientId DESC


SELECT
	ps.Hospital
	, ps.Ward
	, COUNT (*) AS NumberOfPatients
	, SUM(ps.Tariff) AS TotalTariff
	, AVG (ps.Tariff) AS AverageTariff
FROM 
	PatientStay ps
GROUP BY ps.Hospital
	, ps.Ward
ORDER BY TotalTariff DESC

SELECT * from patientstay ps

SELECT * from DimHospital

SELECT 
ps.PatientId
,h.HospitalType
,h.Hospital

 FROM PatientStay ps 
 JOIN DimHospital h 
 ON ps.Hospital = h.Hospital