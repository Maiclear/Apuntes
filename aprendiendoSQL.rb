Lenguaje SQL

es declarativo mas que imperativo.
es un lenguaje que yo le digo, traeme tal dato.
yo le pido con una consulta con un query, => consulta = query

Entonces se define como un tipo de lenguaje declarativo.

bases del tipo RDBMS
y base del tipo SQL


PSQL y Sqlite


Sqlite la ventaja que quiete es que no necesitas un motor y es un solo archivo , donde ese archivo estan todas las tablas, etc
problemas: a modo de produccion no funciona muy bien (si no tienes la ultima version de base de datos puedes perder informacion)

PSQL es mejor con rails. (psql = postgresQL , antes de llamaba ingress) y funciona con el lenguaje SQL. ( es gratis de codigo libre)

MANEJO DE PSQL Y SQL.

INICIAR PSQL

cat .bash_profile | grep pstart
 pero ahora con

lunchy start postgres // para empezar
lunchy stop postgres // para salir

$ lunchy start postgres
started homebrew.mxcl.postgresql
Mai_Clear  Magdalenas-MacBook-Air in ~
$ lunchy stop postgres
stopped homebrew.mxcl.postgresql

luego del lunchy poner

$ psql // para ingresar
y luego dentro para salir:

$ \q

//////////////////////////////////////////////////////

# PARA INSTALAR LUNCHY EN CASO DE QUE ESTE EN OTRO COMPU (TENER RUBY INSTALADO Y RAILS Y POSTGRES DE ANTES)

# Mai_Clear  Magdalenas-MacBook-Air in ~
# $ gem install lunchy
# Fetching: lunchy-0.10.3.gem (100%)
# -------

# Thanks for installing Lunchy.  We know you're going to love it!

# If you want to add tab-completion (for bash), add the following
# to your .bash_profile, .bashrc or .profile

#    LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
#    if [ -f $LUNCHY_DIR/lunchy-completion.bash ]; then
#      . $LUNCHY_DIR/lunchy-completion.bash
#    fi

# or add the following to your .zshrc for ZSH

#   LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
#   if [ -f $LUNCHY_DIR/lunchy-completion.zsh ]; then
#     . $LUNCHY_DIR/lunchy-completion.zsh
#   fi

# -------
# Successfully installed lunchy-0.10.3
# Parsing documentation for lunchy-0.10.3
# Installing ri documentation for lunchy-0.10.3
# Done installing documentation for lunchy after 0 seconds
# 1 gem installed
# Mai_Clear  Magdalenas-MacBook-Air in ~
# $ ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
# /Users/Mai_Clear/Library/LaunchAgents/homebrew.mxcl.postgresql.plist -> /usr/local/opt/postgresql/homebrew.mxcl.postgresql.plist
 //////////////////////////////////////////////


# $ lunchy start postgres
# started homebrew.mxcl.postgresql
# Mai_Clear  Magdalenas-MacBook-Air in ~
# $ lunchy stop postgres
# stopped homebrew.mxcl.postgresql

# Mai_Clear  Magdalenas-MacBook-Air in ~
# $ lunchy start postgres
# started homebrew.mxcl.postgresql
# Mai_Clear  Magdalenas-MacBook-Air in ~
# $ psql
# psql: FATAL:  database "Mai_Clear" does not exist
# Mai_Clear  Magdalenas-MacBook-Air in ~
# $ createdb Mai_Clear
# Mai_Clear  Magdalenas-MacBook-Air in ~
# $ psql
# psql (9.4.4)
# Type "help" for help.

# Mai_Clear=# \u
# Invalid command \u. Try \? for help.
# Mai_Clear=# \du
#                              List of roles
#  Role name |                   Attributes                   | Member of
# -----------+------------------------------------------------+-----------
#  Mai_Clear | Superuser, Create role, Create DB, Replication | {}

# Mai_Clear=# \q


DENTRO DE PSQL EN LA TERMINAL

\h
\? help de comando sql
\d va a listar todas las tablas de ESTA base de datos psql , la MAI_CLEAR (la creamos, pq tiene que tener al menos una base de datos que sea igual al nombre de usuario)
\du va a listar los usiorios que tenemos en psql ( en mi caso solo mai_clear)
\l lista TODAS las base de datos creadas en pqsl

Mai_Clear-# \du
                             List of roles
 Role name |                   Attributes                   | Member of
-----------+------------------------------------------------+-----------
 Mai_Clear | Superuser, Create role, Create DB, Replication | {}


el role name, es el usuario que tiene acceso a la bd.
list of roles: es todo loq eu podeamos hacer con la bd. ( cada role name, por separado, enes te caso solo hay uno)

QUE ES SQL?

dentro de SQL podemos dividir los lenguajes en dos cosas
data manipulation languaje : es como un crud // DML
DTL = data definition langiaje

estos son los dos grupos grandes que tiene SQL, para manipular datos y los definition para crear.

CREANDO UNA BASE DE DATOS

\h create table me dice todas las maneras para poder crear una base.

Mai_Clear=#
Mai_Clear-# // OJO con esto, cdo esta con - en vez de = es porque aún esta dentro de asignarle una declaracion dentro del psql, se termina con ;.
osea cdo pidas algo asegúrate de que estes con el =.


\c = significa conectada a , para conectarse a la base de dato que queiras.

por ejemplo creamos base de dato

Mai_Clear=# create database demodb;
CREATE DATABASE
Mai_Clear=# \c
You are now connected to database "Mai_Clear" as user "Mai_Clear".
Mai_Clear=# \c demodb
You are now connected to database "demodb" as user "Mai_Clear".

con \c te mueves en tus bases de datos. ( como los brunch moverte de master a gh_pages)

\conninfo para saber como estoy conecyado y donde

\d LISTA TODAS las tablas, si dice no relations found ( a las tablas se le llaman relations)
\dt lista todas las tablas

CREAR TABLE

demodb=# create table students(
demodb(# name varchar(60) , lastname varchar(60) , age integer, mail varchar(255))
demodb-# ;
CREATE TABLE
demodb=# create table nombretabla( campo sunaturaleza, campo2 su naturaleza, etc..)

\d nombreTabla = me tira todos los datos de la tabla.


EDITAR LA TABLA MODIFICAR

con el comando alter

alter students
demodb=# alter table students add column rut varchar, add column class varchar;

(varchar es un string)

PARA AGREGAR VALORES A LA TABLA (UNA FILA)
insert into nombretabla(atributos1, attr2, attr3, attretc) Values('kasdfgh', string, integer, wareva que le corresponda)

/////////////////////////////////EJEMPLO///////////////////////////////

demodb=# insert into students
demodb-# (name, lastname, age, mail, rut, class) VALUES('Eduardo', 'Cornejo', 20, 'eduardo@cornejo.com', '13644262-9','G2');
INSERT 0 1
demodb=# selct * from students
demodb-# select * from students
demodb-# ;
ERROR:  syntax error at or near "selct"
LINE 1: selct * from students
        ^
demodb=#
select * from students
;
  name   | lastname | age |        mail         |    rut     | class
---------+----------+-----+---------------------+------------+-------
 Eduardo | Cornejo  |  20 | eduardo@cornejo.com | 13644262-9 | G2
(1 row)

demodb=# insert into students
(name, lastname, age, mail, rut, class) VALUES('Alfredo', 'Lobos', 30, 'alfredo@cornejo.com', '14542623-9','G2'),('Carlos', 'Gajardo',19,'neo@gamil.com','1724435-0','G2');
INSERT 0 2

((((((((((((((((((((((((((((((((((((((()))))))))))))))))))))))))))))))))))))))


* => significa all

select * form nombre tabla => es seleccioname todo loq eu esta en la tabla nombretabla

REPASO SQL

//////////////////////////////SQL/////////////////////////

PARA SELECCIONAR COSAS DE UNA TABLA

select *, columnname, etc, from TableNAme

PARA INSERTA EN LA TABLA

insert into tablename(nombre-atributo1(ejemplo:name), lastname, age, etccc) VALUES('Maida','Claro')

PARA ACTUALIZAR

update tablename

set table name

where tablename

PARA BORRAR

drop
delete from tablename where column value?

PARA EDITAR COLUMNA

alter tablename

demodb=# \d students
            Table "public.students"
  Column  |          Type          | Modifiers
----------+------------------------+-----------
 name     | character varying(60)  |
 lastname | character varying(60)  |
 age      | integer                |
 mail     | character varying(255) |
 rut      | character varying      |
 class    | character varying      |

demodb=# select * from students
demodb-# ;
  name   | lastname | age |        mail         |    rut     | class
---------+----------+-----+---------------------+------------+-------
 Eduardo | Cornejo  |  20 | eduardo@cornejo.com | 13644262-9 | G2
 Alfredo | Lobos    |  30 | alfredo@cornejo.com | 14542623-9 | G2
 Carlos  | Gajardo  |  19 | neo@gamil.com       | 1724435-0  | G2
 Igor    | Venegas  |     |                     | 13422458-8 |
(4 rows)

demodb=# insert into students values('Diego', '', 28,'');
INSERT 0 1
demodb=# select * from students
;
  name   | lastname | age |        mail         |    rut     | class
---------+----------+-----+---------------------+------------+-------
 Eduardo | Cornejo  |  20 | eduardo@cornejo.com | 13644262-9 | G2
 Alfredo | Lobos    |  30 | alfredo@cornejo.com | 14542623-9 | G2
 Carlos  | Gajardo  |  19 | neo@gamil.com       | 1724435-0  | G2
 Igor    | Venegas  |     |                     | 13422458-8 |
 Diego   |          |  28 |                     |            |
(5 rows)

demodb=#


PARA EDITAR UNA FILA
update students set lastname= 'Guajardo', age = 26, mail= 'diego@guajardo.com', rut= '15644282-8' where name = 'Diego';
demodb=# update students set lastname= 'Guajardo', age = 26, mail= 'diego@guajardo.com', rut= '15644282-8' where name = 'Diego';
UPDATE 1
demodb=# select * from students
demodb-# ;
  name   | lastname | age |        mail         |    rut     | class
---------+----------+-----+---------------------+------------+-------
 Eduardo | Cornejo  |  20 | eduardo@cornejo.com | 13644262-9 | G2
 Alfredo | Lobos    |  30 | alfredo@cornejo.com | 14542623-9 | G2
 Carlos  | Gajardo  |  19 | neo@gamil.com       | 1724435-0  | G2
 Igor    | Venegas  |     |                     | 13422458-8 |
 Diego   | Guajardo |  26 | diego@guajardo.com  | 15644282-8 |
(5 rows)

////////////////////////////////

PARA BORRAR UNA FILA

delete from tablename

PARA AGRAGAR COLUMNAS A UNA TABLA

alter table nombretabla add column nombrecolumn naturalezadecolum(ejemplo varchar), add column id serial primary key, etc..


AGREGAR COLUMNA ID

alter table nombretabla add column id serial primary key; (serial en este caso es como integer, es su naturaleza. )

PARA CONTAR TODOS LOS ELEMENTOS DE UNA TABLA


select count(*) from nombretabla;

SELECCCIONAR COSAS ESPECIFICAS
COUNT // CONTAR

select count(columnname) from tablename; (si aqui hay un nill, no te lo devueleve, )

PARA SUMAR UNA COLUMNA // SUM

select sum(nombrecolumna) from nombretabla;

PARA USAR PROMEDIO DE COLUMNA //AVG

select avg(nombrecolumna) from nombretabla;

MAX y MIN
select max(nombrecolumna) from nombretabla; //devuelve el max de la columna
select min(nombrecolumna) from nombretabla; //devueleve el min de la column

select max(nombrecolumna) , min(nombrecolumna) from nombretabla; // devuelve tabla de ambos valores.


JUNTAR COSAS ENTRE COLUMNAS (ejemplo tabla movies) // GROUP BY

select genre, sum(cost) from movies group by genre; // entonces te devuelve el costo agrupado por genero

GROUP BY

select column_name , aggregate_function(column_name)
from table_name GROUP BY column_name;

FILTRAR:

-HAVInG

select genre, sum(cost) from movies group by genre having count(*) > 1; //filtrando por que el genero tenga mas que una peli

SELECT column_name , aggregate_function(column_name)
FROM table_name
GROUP BY column_name;

-WHERE

SELECT column_name , aggregate_function(column_name)
FROM table_name
WHERE column_name + condition
GROUP BY column_name
HAVING + condition;

ejemplo

SELECT genre , sum(cost))
FROM movies
WHERE cost >= 10000
GROUP BY genre
HAVING count(*) > 1;

//////////////////////TERMINA SELECT ///////////////////////////////

CONSTRAIN // RESTRICCION

NOT NULL (esta columna no puede tener un valor null)

CREATE TABLE Promotions
(id int,
name varchar(60) NOT NULL ,
las name varchar(60),
);

UNIQUE // que sea dato UNICO (q nose pueda repetir)

CREATE TABLE Promotions
(nivel de columna)

(id int,
name varchar(60) NOT NULL UNIQUE, => *ojo aqui que puedo poner as de una restriccion por valores con un espacio entre ellos*
las name varchar(60),
);

CHECK COnstraint
me permite hacer una validacion.

CREATE TABLE Persons
(
Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255),
CHECK (Id>0)
)


OTTRA MANERA DE CREAR RESTRIICIONES
(nivel de tabla)

CREATE TABLE Promotions
(id int,
name varchar(60) ,
las name varchar(60),
CONSTRAINT unique_name UNIQUE (name)
);
=> *UNIQUE (campo, en este caso =name)
	 *unique_name = es el nombre de la restriccion
entonces esta manera es de crear las restricciones abajo todos los valores, EXCEPTO
el NOT NULL, este SIEMPRE se debe definir a nivel de columna

PRIMARY KEY:
te hace ese dato como único.
(llave primaria)
Una llave primaria:

*Te hace diferencia ese registrp de otro.
*No puede estar duplicada
*Se define a nivel columna
*Viene con NOT NULL y UNIQUE (ya viene con esas restricciones)

ejemplo:
CREATE TABLE Promotions
(id int PRIMARY KEY,
name varchar(10) NOT NULL ,
category varchar(15),
);

*Por ejemplo cada tabla tiene su id, entonces una tabla puede tener el id de otra tabla.

ejemplo tablaPromociones tiene campo: id, y campo2: movie_id .

en este caso movie_id es una FOREIGN ID o FOREIGN KEY

Para eso debemos setear nuestra llave foranea (foreign key) con REFERENCES

CREATE TABLE Promotions
(id int PRIMARY KEY,
 movie_id int REFERENCES movies(id),
name varchar(10) NOT NULL ,
category varchar(15),
);
o solo poniendole el nombre de la tabal (obviendo el nombre de la columna)

CREATE TABLE Promotions
(id int PRIMARY KEY,
 movie_id int REFERENCES movies,
name varchar(10) NOT NULL ,
category varchar(15),
);

REGISTRO HUERFANO // ORPHAN RECORDS

es un registro donde el padre se borro.
por ejemplo si yo borro un registro de movies, en promociones el registro que tenia esa foreign key queda huerfano.

PREVENIR ORPHAN RECORDS

pirmero borrar los hijos, luego al padre.

delete from Promotions movies_id(6)
delette from Movies id(6)

(lo mismo al borrar tablas completas)
DROP Promotions;
DROP movies;





NORMALIZAR UNA TABLA

FLATTEN
ejemplo repeticion de genero de pelicula, dividimos tabla en 2 una con peliculas y otra tabla solo con generos.
entonces creamos una nueva tabal que tiene referencia a ambas tablas mayores. con un JOIN TABLE.

convencion de poner el nombre de esta nueva tabla con el nombre de las otras dos tablas deparadas con _ ( en este ejemplo Movies_Genre)

la cual va a tener los id de cada una. es decir la tabla Movies_Genre tiene como 2 columnas a movies_id y genre_id.


[Una relacion de muchos a muchos SI necesita una tabla intermedia
no así uno a uno || uno a muchos.]
uno a muchos => 1 -- * (donde en tabla de muchos se usa el id de la tabla 1)
muchos a muchos => * -- *
uno a uno => 1 -- 1


INNER JOIN // tipo de join =>(interseccion)
muestra solo cdo hay un match (coincidencia)

ejemplo
Select *
FROM Movies
INNER JOIN Reviews
ON Movies.id=Reviews.movie_id

//puede se r para ambos lados (obviamente com intersseccion, donde existe la coincidencia)
Select *
FROM Reviews
INNER JOIN Movies
ON Reviews.id=Movies.review_id

///////////ejemplo tablas movies y generos  tabla intermedia Movies_Genre///////

Select Movies.title, Genres.name
From Movies
INNER JOIN Movies_Genre
ON Movies.id = Movies_Genre.movies_id
INNER JOIN Genres
ON Movies_Genre.genre_id = Genres.id
WHere Movies.title = "Peter Pan"


ALIAS de COLUMNAS

SELECT Movies.title AS films, Reviews.review AS reviews
FROM Movies

Select m.title, r.name
From Movies AS m
INNER JOIN Reviews AS r
ON m.id = r.movies_id
///////////////

OUTER JOIN //   RIGHT or LEFT OUTER JOIN
muestra todo lo de la tabla derecha/izq y le coincidencia (match) con la tabla izquierda/der.
con un espacio en el valor que NO tenga coincidencia.

FULL OUTER JOIN // te devuelve las dos tablas.


////////////////////EJEMPLO CREACION DE BLOG ///////////////////////////////
demodb=# \c Mai_Clear
You are now connected to database "Mai_Clear" as user "Mai_Clear".
Mai_Clear=# create database blog
Mai_Clear-# ;
CREATE DATABASE
Mai_Clear=# \c blog
You are now connected to database "blog" as user "Mai_Clear".

blog=# create table users(id serial primary key, name varchar(60) not null, last_name varchar(60) , mail varchar(20) not null, password varchar(60) not null)
;
CREATE TABLE
blog=# \d
              List of relations
 Schema |     Name     |   Type   |   Owner
--------+--------------+----------+-----------
 public | users        | table    | Mai_Clear
 public | users_id_seq | sequence | Mai_Clear
(2 rows)

blog=# create table post(id serial primary key, title varchar(20) not null, content varchar(500) , date date, user_id integer REFERENCES users(id))
;
CREATE TABLE

blog=# create table comments(id serial primary key, content text , date date ,  user_id integer REFERENCES users(id), post_id integer REFERENCES post(id));
;
CREATE TABLE
blog=# create table Post_Likes(post_id integer REFERENCES post(id), user_id integer REFERENCES users(id));
CREATE TABLE
blog=# create table Comments_Likes(comment_id integer REFERENCES comment(id), user_id integer REFERENCES users(id));
ERROR:  relation "comment" does not exist
blog=# create table Comments_Likes(comment_id integer REFERENCES comments(id), user_id integer REFERENCES users(id));
CREATE TABLE


///////////////////////// RELACIONES///////

USERS 1--* POST
POST 1--* COMMENTS
USERS 1--* COMMENTS
USERS 1--* Post_Likes
POST 1--* Post_Likes
USERS 1 --* Comments_Likes
COMMENTS 1--* Comments_Likes

///////////////////////////////////////////



