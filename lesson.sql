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
	,ps.Tariff
FROM
	PatientStay as ps
	WHERE ps.Hospital IN ('Kingston','PRUH')
	AND ps.Ward LIKE '%surgery'
	AND ps.AdmittedDate BETWEEN '2024-02-27' AND '2024-02-29'

