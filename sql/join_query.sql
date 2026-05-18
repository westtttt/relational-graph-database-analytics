SELECT 
	p.full_name AS patient_name,
	c.full_name AS clinician_name,
	c.speciality,
	a.appointment_time,
	a.reason
FROM appointment a
JOIN patient p
    ON a.patient_id = p.patient_id
JOIN clinician c
    ON a.clinician_id = c.clinician_id,
