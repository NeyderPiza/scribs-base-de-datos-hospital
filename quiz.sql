--• Inserciones:  
insert into paciente(tipo_documento, tipo_sangre, nombre, apellido, fecha_nacimiento, genero, numero_documento, direccion, email, telefono)
values (4, 3, 'Juan', 'Perez', '1998-07-10', 'Masculino', '2384992838', 'vereda llanitos', 'juan@gmail.com', '3154567895');

insert into cita_medica (id_paciente, numero_licencia, fecha, motivo, diagnostico) values
(11,1004,'2024-09-15 10:00:00','Consulta general','Dolor estomacal severo en lado derecho')

insert into tratamiento (id_paciente, numero_licencia_doctor, observaciones, fecha_inicio, fecha_fin) VALUES
(11, 1004, 'Tratamiento de control de una posible Hernia. El paciente respondió bien al tratamiento.', '2024-09-16 6:00:00', '2024-09-30 6:00:00')

insert into medicamento (nombre, dosis_recomendada, forma_administracion) VALUES
('naproxeno sódico ', '10 mg diarios', 'Oral')

INSERT INTO preescripcion_medicamento (codigo_tratamiento, codigo_medicamento, numero_licencia_doctor, nombre_medicamento, dosis, frecuencia_administracion, fecha, observaciones) VALUES
(11, 11, 1004, 'naproxeno sódico', '10 mg', '1 vez al día', '2024-09-16 09:00:00', 'Chequeo cada dos meses')

select * from medicamento
--• Consultas:

select * from historial_medico hm where id_paciente=3; 

select ts.tipo_sangre , count(*) as cantidad_pacientes from paciente p inner join tipo_sangre ts on p.tipo_sangre=ts.id_tipo_sangre  group by ts.tipo_sangre 


--• Actualizaciones 

update doctor set especialidad=3,nombre='Jimena',email='Jimena45@gmail.com'
where numero_licencia=1010

update contacto set telefono='3215289747' where id_contacto=2
select * from contacto c order by id_contacto asc
