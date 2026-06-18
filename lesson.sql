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

SELECT * from DimHospitalBad

SELECT 
ps.PatientId
,ps.Hospital
,h.HospitalType
,h.Hospital
 FROM 
 	PatientStay ps 
 LEFT JOIN 
 	DimHospitalBad h 
  ON ps.Hospital = h.Hospital


SELECT
    ps.PatientId,
    ps.Hospital,
    ps.Ward,
    ps.AdmittedDate,
    ps.DischargeDate,
    DATEADD(MONTH, 3, ps.DischargeDate) AS ApptDate
	,ps.Tariff
-- CREATE A COLUMN Budget 50% higher than the Tariff
	,ps.Tariff * 1.5 AS Budget
FROM
    PatientStay AS ps
WHERE
    ps.Ward LIKE '%ophthalmology%';

	