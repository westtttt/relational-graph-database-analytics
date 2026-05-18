CREATE TABLE patient (
    patient_id SERIAL PRIMARY KEY,
    full_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    phone_number VARCHAR(20)
);

CREATE TABLE clinician (
    clinician_id SERIAL PRIMARY KEY,
    full_name VARCHAR(50) NOT NULL,
    speciality VARCHAR(100) NOT NULL
);

CREATE TABLE appointment (
    appointment_id SERIAL PRIMARY KEY,
    patient_id INT NOT NULL,
    clinician_id INT NOT NULL,
    appointment_time TIMESTAMP NOT NULL,
    reason VARCHAR(255),

    FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
    FOREIGN KEY (clinician_id) REFERENCES clinician(clinician_id)
);