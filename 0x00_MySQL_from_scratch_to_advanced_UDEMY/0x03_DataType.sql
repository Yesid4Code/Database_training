# Data Type

# UNSIGNED: Tipo de dato numérico positivo
use curso_sql;
create table persona(
	id integer unsigned not null,
    nombre varchar(50),
    edad integer unsigned,
    primary key(id)
	);
describe persona;

# NUMERICS
/* Integer numbers */
# TINYINT		(UNSIGNED --> 255			POSITIVE NUMBERS)
# SMALLINT		(UNSIGNED --> 65535 		POSITIVE NUMBERS)
# MEDIUMINT		(UNSIGNED --> 16777215		POSITIVE NUMBERS)
# INT / INTEGER	(UNSIGNED --> 4294967295	POSITIVE NUMBERS)
# BIGINT		(UNSIGNED --> (2^64)-1 		POSITIVE NUMBERS)

/* Decimal numbers */
# FLOAT, length and number of decimals
price float(6,2)
# DOUBLE
price double(4.25)
# DECIMAL

# ALPHANUMERIC -- STRING
CHAR 	0-255
VARCHAR	0-65535
BINARY / VARBINARY
TEXT
"Binary Large OBject": TINYBLOB, BLOB, MEDIUMBLOB, LONGBLOB: No use
ENUM (lista de valores permitidos)
SET 

# DATE AND HOUR
DATE: AAAA-MM-DD: 20190715 || 2019-07-15
DATETIME: Fecha y hora: AAAA-MM-DD HH:MM:SS
TIME: HH:MM:SS
TIMESTAMP: 

ON UPDATE CURRENT_TIMESTAMP

YEAR

# DEFAULT and ZEROFILL ATTRIBUTE
create table if not exists libro(
	id int(6) zerofill auto_increment,
    titulo varchar(40) not null,
    editorial varchar(15),
    autor varchar(30) default 'Desconocido',
    precio decimal(5,2) unsigned default 8.25,
    cantidad mediumint zerofill unsigned not null,
    primary key(id)
	);

drop table libro;

insert into libro(
	titulo, editorial, autor, precio, cantidad) values(
    'C# en una hora', 'SQL', 'Antonio', 15.2, 50);
insert into libro(titulo, editorial, autor, cantidad) values(
	'JAVA', 'KDK', 'Juan', 30);
insert into libro(titulo, cantidad) values('SQL', 200);
select * from libro;