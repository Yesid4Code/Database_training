create database curso_sql;
use curso_sql;
# CRUD
# C: Create, U: Update, R: Read, D: Delete
# Operadores Relacionales
# =, <>, >, <, >=, <=
create table alumnos(
	nombre varchar(50),
    apellido varchar(50),
    direccion varchar(50),
    telefono varchar(15),
    edad int(11)
	);

# C: Create
insert into alumnos(
nombre, apellido, direccion, telefono, edad) values(
'Juan', 'Martinez', 'Barrio Duarte', '989898989', 45);
insert into alumnos(
nombre, apellido, direccion, telefono, edad) values(
'Juan', 'Lopez', 'Barrio Mella', '989898989', 35);
insert into alumnos values(
'Pedro', 'Montero', '27 de febrero', '234234', 15);
insert into alumnos(
nombre, telefono, edad) values(
'Antonio', '98233333', 36);

# R: Read
select * from alumnos;
select nombre, direccion from alumnos;
select edad, apellido from alumnos;
select * from alumnos where nombre = 'Juan';
select nombre, edad from alumnos where nombre = 'Juan';
select * from alumnos where nombre <> 'Juan';
select nombre, apellido from alumnos where edad > 15;
select * from alumnos where edad < 40;
select * from alumnos where edad > 15;
select * from alumnos where edad >= 15;
select * from alumnos where edad <= 35;
select nombre, telefono from alumnos where  edad <> 35;
select * from alumnos where edad = 35;

# D: Delete
delete from alumnos;
delete from alumnos where nombre = 'Juan';

# U: Update
update alumnos set edad = 33;
update alumnos set edad = 15 where nombre = 'Pedro';