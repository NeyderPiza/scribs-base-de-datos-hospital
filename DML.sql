--datos de las tablas

INSERT INTO tipo_documento (tipo_documento) VALUES
('DNI'),
('Pasaporte'),
('Licencia de conducir'),
('Tarjeta de identidad'),
('Cédula de extranjería'),
('Cedula de ciudadania'),
('Certificado de nacimiento'),
('Tarjeta de residencia'),
('Documento de identidad militar'),
('Identificación de estudiante');

INSERT INTO tipo_sangre (tipo_sangre) VALUES
('O+'),
('A+'),
('B+'),
('AB+'),
('O-'),
('A-'),
('B-'),
('AB-'),
('O RH-'),
('O RH+');

INSERT INTO habitacion (numero_habitacion, individual, ubicacion) VALUES
(101, TRUE, 'Piso 1'),
(102, FALSE, 'Piso 1'),
(201, TRUE, 'Piso 2'),
(202, FALSE, 'Piso 2'),
(301, TRUE, 'Piso 3'),
(302, FALSE, 'Piso 3'),
(401, TRUE, 'Piso 4'),
(402, FALSE, 'Piso 4'),
(501, TRUE, 'Piso 5'),
(502, FALSE, 'Piso 5');

INSERT INTO cama (id_habitacion, disponible) VALUES
(101, TRUE),
(102, FALSE),
(201, TRUE),
(202, FALSE),
(301, TRUE),
(302, TRUE),
(401, FALSE),
(402, TRUE),
(501, FALSE),
(502, TRUE);

INSERT INTO paciente (tipo_documento, tipo_sangre, nombre, apellido, fecha_nacimiento, genero, numero_documento, direccion, email, telefono) VALUES
(6, 1, 'Juan', 'Pérez', '1990-05-12', 'Masculino', '1234567890', 'Calle 123', 'juan.perez@gmail.com', '3001234567'),
(2, 1, 'Ana', 'García', '1985-09-24', 'Femenino', '9876543210', 'Carrera 456', 'ana.garcia@gmail.com', '3209876543'),
(3, 3, 'Carlos', 'Rodríguez', '1975-02-10', 'Masculino', '4567890123', 'Avenida 789', 'carlos.rodriguez@gmail.com', '3101237890'),
(4, 2, 'María', 'López', '2000-11-15', 'Femenino', '7890123456', 'Diagonal 101', 'maria.lopez@gmail.com', '3159870123'),
(4, 5, 'Pedro', 'Martínez', '1965-07-08', 'Masculino', '5678901234', 'Transversal 202', 'pedro.martinez@gmail.com', '3124567890'),
(6, 6, 'Luisa', 'Fernández', '1995-03-20', 'Femenino', '8901234567', 'Carrera 303', 'luisa.fernandez@gmail.com', '3189012345'),
(7, 1, 'Marta', 'Gómez', '1980-12-30', 'Femenino', '6789012345', 'Calle 404', 'marta.gomez@gmail.com', '3115678901'),
(6, 8, 'Diego', 'Sánchez', '1992-04-05', 'Masculino', '2345678901', 'Avenida 505', 'diego.sanchez@gmail.com', '3142345678'),
(9, 2, 'Paula', 'Ramírez', '1978-06-25', 'Femenino', '3456789012', 'Transversal 606', 'paula.ramirez@gmail.com', '3133456789'),
(4, 1, 'Santiago', 'Ortiz', '1988-08-17', 'Masculino', '4567890123', 'Carrera 707', 'santiago.ortiz@gmail.com', '3164567890');

INSERT INTO contacto ( nombre, telefono) VALUES
( 'José Pérez', '3109876543'),
( 'Claudia García', '3204567890'),
( 'Fernando Rodríguez', '3112345678'),
( 'Andrea López', '3149870123'),
( 'Luis Martínez', '3134567890'),
( 'Carolina Fernández', '3127890123'),
( 'Sofía Gómez', '3153456789'),
( 'Camilo Sánchez', '3165678901'),
( 'Valeria Ramírez', '3177890123'),
( 'Roberto Ortiz', '3182345678');

INSERT INTO contacto_paciente (id_paciente, id_contacto, parentesco) VALUES
(1, 1, 'Padre'),
(2, 2, 'Madre'),
(3, 3, 'Hermano'),
(4, 4, 'Amiga'),
(5, 5, 'Esposo'),
(6, 6, 'Hermana'),
(7, 7, 'Prima'),
(8, 8, 'Amigo'),
(9, 9, 'Esposo'),
(10, 10, 'Hermano');

INSERT INTO especialidad (nombre) VALUES
('Cardiología'),
('Neurología'),
('Pediatría'),
('Gastroenterología'),
('Dermatología'),
('Oncología'),
('Ortopedia'),
('Ginecología'),
('Psiquiatría'),
('Oftalmología');

INSERT INTO doctor (numero_licencia, especialidad, nombre, apellido, telefono, email) VALUES
(1001, 1, 'Carlos', 'Ruiz', '3106543210', 'carlos.ruiz@hospital.com'),
(1002, 2, 'María', 'Vargas', '3209876543', 'maria.vargas@hospital.com'),
(1003, 3, 'Jorge', 'Fernández', '3111234567', 'jorge.fernandez@hospital.com'),
(1004, 4, 'Paola', 'González', '3156789012', 'paola.gonzalez@hospital.com'),
(1005, 5, 'Andrés', 'Pérez', '3143456789', 'andres.perez@hospital.com'),
(1006, 6, 'Lucía', 'Rojas', '3124567890', 'lucia.rojas@hospital.com'),
(1007, 7, 'Camilo', 'Santos', '3135678901', 'camilo.santos@hospital.com'),
(1008, 8, 'Valeria', 'Cruz', '3166789012', 'valeria.cruz@hospital.com'),
(1009, 9, 'Ricardo', 'López', '3187890123', 'ricardo.lopez@hospital.com'),
(1010, 10, 'Fernanda', 'García', '3191234567', 'fernanda.garcia@hospital.com');

INSERT INTO tratamiento (id_paciente, numero_licencia_doctor, observaciones, fecha_inicio, fecha_fin) VALUES
(1, 1001, 'Tratamiento para hipertensión. El paciente respondió bien al tratamiento.', '2023-08-01 10:00:00', '2023-09-01 10:00:00'),
(2, 1002, 'Tratamiento para migrañas crónicas. Se recomienda seguimiento mensual.', '2023-07-15 14:00:00', '2023-08-15 14:00:00'),
(3, 1003, 'Rehabilitación post-quirúrgica. Paciente con evolución favorable.', '2023-06-10 08:00:00', '2023-07-10 08:00:00'),
(4, 1004, 'Tratamiento para úlceras gástricas. Monitorización semanal requerida.', '2023-05-20 09:00:00', '2023-06-20 09:00:00'),
(5, 1005, 'Tratamiento dermatológico para dermatitis. Revisión en un mes.', '2023-09-01 11:00:00', '2023-10-01 11:00:00'),
(6, 1006, 'Quimioterapia para cáncer de mama. Ciclo de 6 meses.', '2023-04-01 08:00:00', '2023-10-01 08:00:00'),
(7, 1007, 'Tratamiento para fractura de pierna. Rehabilitación física durante 3 meses.', '2023-03-15 10:00:00', '2023-06-15 10:00:00'),
(8, 1008, 'Control ginecológico rutinario. Seguimiento anual.', '2023-02-05 12:00:00', '2023-02-05 13:00:00'),
(9, 1009, 'Tratamiento psiquiátrico para ansiedad. Medicación diaria durante 6 meses.', '2023-01-10 09:00:00', '2023-07-10 09:00:00'),
(10, 1010, 'Cirugía ocular por cataratas. Recuperación en 3 semanas.', '2023-08-20 07:00:00', '2023-09-10 07:00:00');

INSERT INTO medicamento (nombre, dosis_recomendada, forma_administracion) VALUES
('Enalapril', '10 mg diarios', 'Oral'),
('Sumatriptán', '50 mg al inicio del dolor', 'Oral'),
('Ibuprofeno', '400 mg cada 8 horas', 'Oral'),
('Omeprazol', '20 mg diarios antes de las comidas', 'Oral'),
('Hidrocortisona', 'Aplicar crema 2 veces al día', 'Tópica'),
('Paclitaxel', '175 mg/m2 por vía intravenosa cada 3 semanas', 'Intravenosa'),
('Paracetamol', '500 mg cada 6 horas', 'Oral'),
('Metformina', '500 mg dos veces al día', 'Oral'),
('Sertralina', '50 mg diarios', 'Oral'),
('Dexametasona', 'Gotas oculares cada 4 horas', 'Oftálmica');

INSERT INTO preescripcion_medicamento (codigo_tratamiento, codigo_medicamento, numero_licencia_doctor, nombre_medicamento, dosis, frecuencia_administracion, fecha, observaciones) VALUES
(1, 1, 1001, 'Enalapril', '10 mg', '1 vez al día', '2023-08-01 09:00:00', 'Monitorizar presión arterial cada semana.'),
(2, 2, 1002, 'Sumatriptán', '50 mg', 'Cuando aparece el dolor', '2023-07-15 10:00:00', 'Evitar uso excesivo.'),
(3, 3, 1003, 'Ibuprofeno', '400 mg', 'Cada 8 horas', '2023-06-11 08:30:00', 'Evitar si hay problemas gástricos.'),
(4, 4, 1004, 'Omeprazol', '20 mg', '1 vez al día antes de las comidas', '2023-05-20 07:45:00', 'Tomar antes del desayuno.'),
(5, 5, 1005, 'Hidrocortisona', 'Aplicar 2 veces al día', 'Aplicación tópica', '2023-09-02 11:15:00', 'No exceder la dosis.'),
(6, 6, 1006, 'Paclitaxel', '175 mg/m2', 'Cada 3 semanas', '2023-04-02 14:00:00', 'Controlar efectos secundarios.'),
(7, 7, 1007, 'Paracetamol', '500 mg', 'Cada 6 horas', '2023-03-16 16:00:00', 'Tomar con agua.'),
(8, 8, 1008, 'Metformina', '500 mg', 'Dos veces al día', '2023-02-06 12:45:00', 'Tomar después de las comidas.'),
(9, 9, 1009, 'Sertralina', '50 mg', '1 vez al día', '2023-01-11 09:30:00', 'Evitar consumo de alcohol.'),
(10, 10, 1010, 'Dexametasona', 'Gotas cada 4 horas', 'Oftálmica', '2023-08-21 13:00:00', 'Uso temporal, seguir indicaciones.');

INSERT INTO cita_medica (id_paciente, numero_licencia, fecha, motivo, diagnostico) VALUES
(1, 1001, '2023-08-05 10:00:00', 'Chequeo anual de hipertensión', 'Presión arterial controlada.'),
(2, 1002, '2023-07-20 14:00:00', 'Consulta por migrañas', 'Recomendado tratamiento preventivo.'),
(3, 1003, '2023-06-12 09:30:00', 'Rehabilitación post-quirúrgica', 'Evolución favorable.'),
(4, 1004, '2023-05-22 11:00:00', 'Consulta por úlceras gástricas', 'Se recomienda seguimiento endoscópico.'),
(5, 1005, '2023-09-05 12:00:00', 'Problemas dermatológicos', 'Dermatitis tratada con éxito.'),
(6, 1006, '2023-04-10 08:00:00', 'Tratamiento oncológico', 'Paciente tolerando quimioterapia.'),
(7, 1007, '2023-03-20 16:00:00', 'Revisión de fractura de pierna', 'Requiere más fisioterapia.'),
(8, 1008, '2023-02-10 13:30:00', 'Control ginecológico rutinario', 'Todo en orden.'),
(9, 1009, '2023-01-15 10:00:00', 'Consulta por ansiedad', 'Recomendada terapia combinada.'),
(10, 1010, '2023-08-25 08:45:00', 'Consulta oftalmológica', 'Cirugía de cataratas exitosa.');

INSERT INTO cita_tratamiento (codigo_cita, codigo_tratamiento, observaciones) VALUES
(1, 1, 'El tratamiento para hipertensión fue ajustado. Se recomienda continuar monitoreando la presión.'),
(2, 2, 'El tratamiento para migrañas mostró mejoría significativa. Se recomienda seguimiento en 1 mes.'),
(3, 3, 'Post-quirúrgico sin complicaciones. Continuar fisioterapia.'),
(4, 4, 'El tratamiento para úlceras gástricas ha reducido los síntomas. Se programará endoscopia de seguimiento.'),
(5, 5, 'Dermatitis en remisión. No se observan nuevas lesiones.'),
(6, 6, 'Quimioterapia bien tolerada. Seguimiento en 2 semanas.'),
(7, 7, 'Fractura de pierna en proceso de recuperación. Se recomienda fisioterapia intensiva.'),
(8, 8, 'Control ginecológico sin anomalías. Revisión en un año.'),
(9, 9, 'Mejora en los síntomas de ansiedad. Terapia combinada eficaz.'),
(10, 10, 'Revisión post-cirugía de cataratas. Paciente con visión restaurada.');

INSERT INTO tipo_registros (nombre_tipo_registro) VALUES
('Consulta médica general'),
('Consulta de seguimiento'),
('Tratamiento especializado'),
('Cirugía'),
('Urgencias'),
('Rehabilitación'),
('Psicología'),
('Consulta ginecológica'),
('Tratamiento oncológico'),
('Control oftalmológico'),
('Alergia al mani'),
('condicion preexistente cancer'),
('Alergia a alimentos'),
('Rúnitis alergica');

INSERT INTO historial_medico (tipo_registro, id_paciente, id_medico, fecha, contenido_registro) VALUES
(1, 1, 1001, '2024-01-15', 'Consulta general. Paciente presenta dolores de cabeza intermitentes.'),
(2, 2, 1002, '2024-02-20', 'Seguimiento. Mejora en los síntomas de hipertensión.'),
(3, 3, 1003, '2024-03-10', 'Tratamiento especializado para diabetes. Ajuste en la medicación.'),
(4, 4, 1004, '2024-04-05', 'Cirugía de apendicitis sin complicaciones. Paciente dado de alta.'),
(5, 5, 1005, '2024-05-18', 'Consulta ginecológica. Examen normal.'),
(6, 6, 1006, '2024-06-12', 'Rehabilitación post fractura de pierna. Mejoría significativa.'),
(7, 7, 1007, '2024-07-23', 'Tratamiento oncológico. Paciente tolera bien la quimioterapia.'),
(8, 8, 1008, '2024-08-15', 'Consulta psicológica. Paciente con mejoría en ansiedad.'),
(9, 9, 1009, '2024-09-01', 'Control oftalmológico post-cirugía de cataratas. Visión restaurada.'),
(10, 10, 1010, '2024-09-05', 'Consulta de urgencias por dolor abdominal agudo. Diagnóstico de úlcera.'),
(11, 3, 1001, '2024-09-10', 'Reacción alérgica grave al maní, que puede causar síntomas como urticaria'),
(12, 7, 1002, '2024-09-11', 'Historial de cáncer, tratado y en remisión. Se requiere seguimiento regular y monitoreo de salud'),
(13, 7, 1003, '2024-09-11', 'Reacción alérgica a ciertos alimentos, que puede incluir síntomas como urticaria, inflamación y dificultad respiratoria. '),
(14, 4, 1004, '2024-09-12', 'Inflamación de la mucosa nasal causada por alérgenos, que provoca síntomas como estornudos, congestión y picazón.'),
(12, 3, 1003, '2024-09-13', 'Historial de cáncer, tratado y en remisión. Se requiere seguimiento regular y monitoreo de salud'),
(11,4, 1004, '2024-09-15', 'Reacción alérgica grave al maní, que puede causar síntomas como urticaria');

INSERT INTO hospitalizacion (codigo_cama, codigo_habitacion, id_paciente, fecha_ingreso, fecha_alta, motivo_ingreso, motivo_alta, activo) VALUES
(1, 101, 1, '2024-02-01 08:00:00', '2024-02-10 10:00:00', 'Dolor abdominal severo. Diagnóstico de apendicitis.', 'Alta post-quirúrgica, paciente estable.', FALSE),
(2, 102, 2, '2024-03-12 14:00:00', '2024-03-18 12:00:00', 'Hospitalización por crisis hipertensiva.', 'Mejora con tratamiento. Alta sin complicaciones.', FALSE),
(3, 201, 3, '2024-04-05 09:00:00', '2024-04-15 11:30:00', 'Cirugía por fractura de fémur.', 'Paciente en rehabilitación, alta recomendada.', FALSE),
(4, 202, 4, '2024-05-20 07:00:00', '2024-05-27 09:00:00', 'Tratamiento de neumonía severa.', 'Alta con recomendaciones para seguimiento.', FALSE),
(5, 301, 5, '2024-06-01 15:00:00', '2024-06-05 10:00:00', 'Revisión post-operación de apendicitis.', 'Alta tras revisión favorable.', FALSE),
(6, 302, 6, '2024-07-02 08:00:00', '2024-07-10 12:00:00', 'Infección urinaria severa.', 'Alta tras antibióticos y mejoría evidente.', FALSE),
(7, 401, 7, '2024-08-05 09:00:00', '2024-08-12 11:00:00', 'Complicaciones post quimioterapia.', 'Alta con control de efectos secundarios.', FALSE),
(8, 402, 8, '2024-09-01 10:00:00', '2024-09-10 09:30:00', 'Hospitalización para control de fractura de pierna.', 'Alta recomendada, fisioterapia continuada.', FALSE),
(9, 501, 9, '2024-09-15 14:00:00', '2024-09-20 12:00:00', 'Revisión tras cirugía de cataratas.', 'Alta con visión restaurada.', FALSE),
(10, 502, 10, '2024-10-01 16:00:00', '2024-10-10 13:00:00', 'Ingreso por dolor abdominal. Diagnóstico de úlcera.', 'Alta tras tratamiento y mejoría.', FALSE);

INSERT INTO historial_medico (tipo_registro, id_paciente, id_medico, fecha, contenido_registro) VALUES
(11, 3, 1001, '2024-09-10', 'Reacción alérgica grave al maní, que puede causar síntomas como urticaria'),
(12, 7, 1002, '2024-09-11', 'Historial de cáncer, tratado y en remisión. Se requiere seguimiento regular y monitoreo de salud'),
(13, 7, 1003, '2024-09-11', 'Reacción alérgica a ciertos alimentos, que puede incluir síntomas como urticaria, inflamación y dificultad respiratoria. '),
(14, 4, 1004, '2024-09-12', 'Inflamación de la mucosa nasal causada por alérgenos, que provoca síntomas como estornudos, congestión y picazón.'),
(12, 3, 1003, '2024-09-13', 'Historial de cáncer, tratado y en remisión. Se requiere seguimiento regular y monitoreo de salud'),
(11,4, 1004, '2024-09-15', 'Reacción alérgica grave al maní, que puede causar síntomas como urticaria');











