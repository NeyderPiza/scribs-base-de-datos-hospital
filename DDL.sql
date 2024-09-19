--creacion de tablas y sus relaciones
create table tipo_documento(
id_tipo_documento serial primary key,
tipo_documento varchar(50) not null
);

create table tipo_sangre(
id_tipo_sangre serial primary key,
tipo_sangre varchar(50) not null
);

create table habitacion(
numero_habitacion int primary key,
individual boolean,
ubicacion varchar(20)
);

create table cama(
codigo_cama serial primary key,
id_habitacion int,
disponible boolean,
constraint fk_habitacion foreign key (id_habitacion) references habitacion(numero_habitacion) 
);


create table paciente(
id_paciente serial primary key,
tipo_documento int,
tipo_sangre int,
nombre varchar(50) not null,
apellido varchar(50) not null,
fecha_nacimiento date,
fecha_muerte date,
genero varchar(20),
numero_documento varchar(15) not null,
direccion varchar(70),
email varchar(310),
telefono varchar(80),
constraint fk_tipo_documento foreign key (tipo_documento) references tipo_documento (id_tipo_documento),
constraint fk_Tipo_sangre foreign key (tipo_sangre) references tipo_sangre(id_tipo_sangre)
);


create table contacto(
id_contacto serial primary key,
nombre varchar(50) not null,
telefono varchar(50) not null
);

create table contacto_paciente(
id_paciente int ,
id_contacto int ,
parentesco varchar(100),
constraint pk_contacto_paciente primary key (id_paciente, id_contacto),
constraint fk_contacto foreign key (id_contacto) references contacto(id_contacto),
constraint fk_paciente foreign key (id_paciente) references paciente(id_paciente)
);

create table especialidad(
id_especialidad serial primary key,
nombre varchar(50) not null
);

create table doctor(
numero_licencia int primary key,
especialidad int,
nombre varchar(50) not null,
apellido varchar(50) not null,
telefono varchar(80),
email varchar(310),
constraint fk_especialidad foreign key (especialidad) references especialidad(id_especialidad)
);

create table tratamiento(
codigo_tratamiento serial primary key,
id_paciente int,
numero_licencia_doctor int,
observaciones varchar(1000) not null,
fecha_inicio timeStamp,
fecha_fin timeStamp,
constraint fk_paciente foreign key (id_paciente) references paciente(id_paciente),
constraint fk_doctor foreign key (numero_licencia_doctor) references doctor(numero_licencia)
);

create table medicamento(
codigo_medicamento serial primary key,
nombre varchar(1000) not null,
dosis_recomendada varchar(400) not null,
forma_administracion varchar(400) not null
);

create table preescripcion_medicamento(
id_preescripcion serial primary key,
codigo_tratamiento int,
codigo_medicamento int,
numero_licencia_doctor int,
nombre_medicamento varchar(400),
dosis varchar(300) not null,
frecuencia_administracion varchar(400) not null,
fecha timeStamp,
observaciones varchar(400),
constraint fk_tratamiento foreign key (codigo_tratamiento) references tratamiento(codigo_tratamiento),
constraint fk_medicamento foreign key (codigo_medicamento) references medicamento(codigo_medicamento),
constraint fk_doctor foreign key (numero_licencia_doctor) references doctor(numero_licencia)
);

create table cita_medica(
codigo_cita serial primary key,
id_paciente int,
numero_licencia int,
fecha timeStamp not null,
motivo varchar(355) not null,
diagnostico varchar(355),
constraint fk_paciente foreign key (id_paciente) references paciente(id_paciente),
constraint fk_doctor foreign key (numero_licencia) references doctor(numero_licencia)
);


create table cita_tratamiento(
codigo_cita int,
codigo_tratamiento int,
observaciones varchar(400) not null,
constraint pk_citas primary key (codigo_cita, codigo_tratamiento),
constraint fk_cita_medica foreign key (codigo_cita) references cita_medica(codigo_cita),
constraint fk_tratamiento foreign key (codigo_tratamiento) references tratamiento(codigo_tratamiento)
);

create table tipo_registros(
id_tipo_registro serial primary key,
nombre_tipo_registro varchar(100) not null
);

create table historial_medico(
id_registro bigserial primary key,
tipo_registro int,
id_paciente int,
id_medico int,
fecha date,
contenido_registro varchar(500),
constraint fk_tipo_registro foreign key (tipo_registro) references tipo_registros(id_tipo_registro),
constraint fk_paciente foreign key (id_paciente) references paciente(id_paciente),
constraint fk_medico foreign key (id_medico) references doctor(numero_licencia)
);

create table hospitalizacion(
id_hospitalizacion serial primary key,
codigo_cama int,
codigo_habitacion int,
id_paciente int,
fecha_ingreso timeStamp not null,
fecha_alta timeStamp not null,
motivo_ingreso varchar(300) not null,
motivo_alta varchar(300) not null,
activo boolean,
constraint fk_cama foreign key (codigo_cama) references cama(codigo_cama),
constraint fk_habitacion foreign key (codigo_habitacion) references habitacion(numero_habitacion),
constraint fk_paciente foreign key (id_paciente) references paciente(id_paciente)
);





























