show databases;

drop database curso; 

create database curso;

use db_name;

create table usuario(
	nombre varchar(50),
    edad int(15)
    );

show tables;
describe usuario;

create table alumnos(
	nombre varchar(50),
    apellido varchar(50),
    direccion varchar(50),
    telefono varchar(15),
    edad int(11)
	);