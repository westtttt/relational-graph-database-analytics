BEGIN;

INSERT INTO patient (full_name, date_of_birth, phone_number)
VALUES ('Temporary Patient', '1999-05-10', '07000000000');

-- This fails because patient_id 999 does not exist
INSERT INTO appointment (patient_id, clinician_id, appointment_time, reason)
VALUES (999, 1, '2026-05-01 12:00:00', 'Invalid appointment');

ROLLBACK;