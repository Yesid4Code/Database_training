# Delete a DataBase
drop database if exists curso_sql;

show databases;

create database if not exists curso_sql;
use curso_sql;

create table if not exists usuario(
	nombre varchar(59),
    apellido varchar(50),
    correo varchar(100),
    primary key(nombre)
    );
insert into usuario values('Juan', 'Perez', 'juan@perez.com');
insert into usuario values('Juan', 'Lopez', 'juan@lopez.com');
describe usuario;

create table if not exists producto(
	id int(11) auto_increment,
    producto varchar(50),
    descripcion text,
    precio float(11,2),
    primary key(id)
    );
describe producto;
insert into producto values(null, 'Laptop', 'La mejor laptop del mercado.', 128.6);
insert into producto values(null, 'Mouse', 'cado.', 18.6);
insert into producto (id, producto, descripcion, precio) values(null, 'Laptop', 'La mejor laptop del mercado.', 128.6);
select * from producto;

# Truncate vs Delete
delete from producto; # delete all records
truncate table producto; # delete all records and reset the id (autoincrement)
