INSERT INTO patient (full_name, date_of_birth, phone_number)
VALUES
('Alice Brown', '1985-04-12', '07123456789'),
('James Wilson', '1992-09-23', '07234567890'),
('Sarah Taylor', '1978-01-30', '07345678901');

INSERT INTO clinician (full_name, speciality)
VALUES
('Emily Smith', 'General Practitioner'),
('Robert Jones', 'Cardiology'),
('Helen Clark', 'Dermatology');

INSERT INTO appointment (patient_id, clinician_id, appointment_time, reason)
VALUES
(1, 1, '2026-04-28 09:30:00', 'General check-up'),
(2, 2, '2026-04-28 11:00:00', 'Chest pain assessment'),
(3, 3, '2026-04-29 14:15:00', 'Skin irritation'),
(1, 2, '2026-04-30 10:00:00', 'Follow-up appointment');